package dao;


import beans.Usuario;
import beans.Vehiculo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class VehiculoDao {
    
    Connection con;
    
    public VehiculoDao(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost/parking","root","root");

            //daoTarea= new TareaDao();
        } catch (ClassNotFoundException e) {
                e.printStackTrace();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    
    public boolean guardarVehiculo(Vehiculo vehiculo){
        try {
            PreparedStatement sentencia = 
            con.prepareStatement("INSERT INTO vehiculos VALUES(?, ?, ?, ?)");
            sentencia.setString(1,vehiculo.getMatricula());
            sentencia.setString(2,vehiculo.getTipoVehiculo());
            sentencia.setBoolean(3,vehiculo.isElectrico());
            sentencia.setString(4,vehiculo.getUsuario().getDNI());
            sentencia.executeUpdate();
            sentencia.close();	
        }catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    
    public Vehiculo recuperarVehiculo(String matricula){
        try {
		Statement sentencia= con.createStatement();
		ResultSet tablaVehiculos =sentencia.executeQuery("select * from vehiculos where matricula='"
                                                                                       +matricula+"'");
		tablaVehiculos.next();
		String tipovehiculo = tablaVehiculos.getString("tipoVehiculo");
		boolean electrico = tablaVehiculos.getBoolean("electrico");
		Vehiculo v = new Vehiculo(tipovehiculo,electrico,matricula);
		return v;
	} catch (SQLException e) {
		e.printStackTrace();
		return null;
	}	
    }
    public ArrayList<Vehiculo> recuperarVehiculosDeUsuario(Usuario user){
        try {
            Statement sentencia= con.createStatement();
            ResultSet tablaVehiculos =sentencia.executeQuery("SELECT * FROM vehiculos LEFT JOIN plazas on dniUsuario='"+user.getDNI()+"' and matricula=matriculaVehiculo;");
            ArrayList<Vehiculo> vehiculos= new ArrayList<Vehiculo>();
            while(tablaVehiculos.next()){
                    String tipovehiculo = tablaVehiculos.getString("tipovehiculo");
                    boolean electrico = tablaVehiculos.getBoolean("electrico");
                    String matricula= tablaVehiculos.getString("matricula");
                    Vehiculo v = new Vehiculo(tipovehiculo,electrico,matricula);
                    v.setPlazaOcupada(tablaVehiculos.getInt("numero"));
                    vehiculos.add(v);
            }
            return vehiculos;
        }catch (SQLException e) {
            e.printStackTrace();
            return null;
        }		
    }

    public boolean modificarVehiculo(Vehiculo v){
        try {
            Statement sentencia= con.createStatement();
            sentencia.executeUpdate("UPDATE vehiculos SET tipoVehiculo=\""+v.getTipoVehiculo()+"\" WHERE matricula=\""+v.getMatricula()+"\"");
            sentencia.close();	
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    
    public boolean eliminarVehiculo(String matricula){
        try {
            Statement sentencia= con.createStatement();
            int resultado =sentencia.executeUpdate("DELETE FROM vehiculos WHERE matricula=\""+matricula+"\"");
            sentencia.close();
            
            if(resultado==0)
                return false;
            else
                return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean eliminarVehiculosDeUsuario(Usuario user){
		try {
			Statement sentencia= con.createStatement();
			int resultado =sentencia.executeUpdate("DELETE FROM vehiculos WHERE dniUsuario=\""+user.getDNI()+"\"");
			sentencia.close();	
			if(resultado==0)
                             return false;
                        else
                             return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
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
