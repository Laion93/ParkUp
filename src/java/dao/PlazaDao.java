/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Plaza;
import beans.Vehiculo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Manchita
 */
public class PlazaDao {
    
    Connection con;
	
	public PlazaDao(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost/parking","root","root");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} /*selecciona el driver a utilizar */ catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
        
        public boolean ocuparPlaza(int numeroPlaza, Vehiculo v) {
		try {
		Statement sentencia= con.createStatement();
		sentencia.executeUpdate("update plazas set estado=true, matriculaVehiculo="
                                                       + "\""+v.getMatricula()+"\"WHERE numero="+numeroPlaza);
		sentencia.close();
		return true;
		} catch (SQLException e) {

			e.printStackTrace();
			return false;
		}
	}
        
        public boolean liberarPlaza(Vehiculo v){
		try {
			Statement sentencia= con.createStatement();
		sentencia.executeUpdate("update plazas set estado=false, matriculaVehiculo=NULL WHERE "
                                                              + "matriculaVehiculo=\""+v.getMatricula()+"\"");
		sentencia.close();
		return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
        
        public ArrayList<Plaza> recuperarPlazas(){
                try {
                    Statement sentencia= con.createStatement();
                    ResultSet tablaPlazas =sentencia.executeQuery("select * from plazas");
                    ArrayList<Plaza> plazas= new ArrayList<Plaza>();
                    while(tablaPlazas.next()){
                            int numero = tablaPlazas.getInt("numero");
                            boolean estado = tablaPlazas.getBoolean("estado");
                            String tipoVehiculo = tablaPlazas.getString("tipoVehiculo");
                            String matriculaVehiculo= tablaPlazas.getString("matriculaVehiculo");
                            boolean electrico = tablaPlazas.getBoolean("electrico");
                            String nombrePlaza = tablaPlazas.getString("nombrePlaza");
                            
                            Plaza p = new Plaza(numero,estado,tipoVehiculo, matriculaVehiculo, electrico, nombrePlaza);
                            plazas.add(p);
                    }
                    return plazas;
                }catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }		
        }
        
        public Plaza recuperarPlaza(int numeroPlaza){
                try {
                    Statement sentencia= con.createStatement();
                    ResultSet Plaza =sentencia.executeQuery("select * from plazas where numero="+numeroPlaza);
                    Plaza p = new Plaza();
                    while(Plaza.next()){
                        int numero = Plaza.getInt("numero");
                        boolean estado = Plaza.getBoolean("estado");
                        String tipoVehiculo = Plaza.getString("tipoVehiculo");
                        boolean electrico = Plaza.getBoolean("electrico");
                        String nombrePlaza = Plaza.getString("nombrePlaza");
                        p.setNumero(numero);
                        p.setEstado(estado);
                        p.setTipoVehiculo(tipoVehiculo);
                        p.setElectrico(electrico);
                        p.setNombrePlaza(nombrePlaza);
                    }
                    return p;
                }catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }		
        }
        
        public boolean modificarPlaza(Plaza p){
		try {
			Statement sentencia= con.createStatement();
                        if(!p.isEstado()){
                            sentencia.executeUpdate("update plazas SET estado=true where numero="+p.getNumero());
                        }else{
                            sentencia.executeUpdate("update plazas SET estado=false where numero="+p.getNumero());
                        }
			sentencia.close();	
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

        public void cerrarConexion(){
		try{
			con.close();
		}catch (Exception e) {
			System.out.println("No se puede cerrar la conexion");
			e.printStackTrace();
		}
        }
}
