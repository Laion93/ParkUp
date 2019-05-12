/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import beans.Usuario;
import beans.Vehiculo;
import dao.VehiculoDao;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Manchita
 */
public class GestionVehiculos {
    
        VehiculoDao dao;
	
	public GestionVehiculos(){
		dao = new VehiculoDao();
	}
	
	public boolean guardarVehiculo(Vehiculo v){
		return dao.guardarVehiculo(v);	
	}
	
        public Vehiculo recuperarVehiculo(String matricula){
		return dao.recuperarVehiculo(matricula);	
	}
	
        public ArrayList<Vehiculo> recuperarVehiculosDeUsuario(Usuario u){
                return dao.recuperarVehiculosDeUsuario(u);
        }
        
	public boolean eliminarVehiculo(String matricula){
		return dao.eliminarVehiculo(matricula);
	}
	
	public boolean  eliminarVehiculosDeUsuario(Usuario user){
		return dao.eliminarVehiculosDeUsuario(user);
	}

	public void salir(){
		dao.cerrarConexion();
	}
}
