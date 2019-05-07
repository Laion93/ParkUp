/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Manchita
 */
public class UsuarioDao {

	Connection con;
	VehiculoDao daoVehiculo;
	
	public UsuarioDao(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost/parking","root","root");
                        daoVehiculo = new VehiculoDao();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} /*selecciona el driver a utilizar */ catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
        
	public boolean registrarUsuario(Usuario user) {
		try {
		
		String sql= "insert into usuarios values(?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, user.getDNI());
		ps.setString(2, user.getNombre());
		ps.setString(3, user.getApellido());
                ps.setString(4, user.getEmail());
                ps.setInt(5, user.getTelefono());
		ps.setString(6, user.getPass());
		ps.executeUpdate();
		return true;
		} catch (SQLException e) {

			e.printStackTrace();
			return false;
		}
		
	}


	public Usuario recuperarUsuario(String email) {
		String sql= "select * from usuarios where email=?";
	
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs= ps.executeQuery();
			if(rs.next()){
                                String dni= rs.getString("dni");
                                String nombre= rs.getString("nombre");
                                String apellidos= rs.getString("apellidos");
				String pass= rs.getString("pass");
                                int telefono = rs.getInt("telefono");
                                
				Usuario user= new Usuario();
                                user.setDNI(dni);
				user.setNombre(nombre);
                                user.setApellido(apellidos);
				user.setPass(pass);
                                user.setTelefono(telefono);
				user.setEmail(email);
                                
				user.setVehiculos(daoVehiculo.recuperarVehiculosDeUsuario(user));
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return null;
	}
        
        public boolean eliminarUsuario(String dni) {
		String sql= "delete from usuarios where dni=?";
	
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1,dni);
                        int resultado = ps.executeUpdate();
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
