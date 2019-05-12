/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import beans.Plaza;
import beans.Vehiculo;
import dao.PlazaDao;
import java.util.ArrayList;

/**
 *
 * @author Manchita
 */
public class GestionPlazas {
    
    PlazaDao dao;
	
	public GestionPlazas(){
		dao = new PlazaDao();
	}

	public boolean ocuparPlaza(int numeroPlaza, Vehiculo v) {
		return dao.ocuparPlaza(numeroPlaza, v);
	}

	public boolean liberarPlaza(Vehiculo v){
		return dao.liberarPlaza(v);
	}
        
        public ArrayList<Plaza> recuperarPlazas(){
		return dao.recuperarPlazas();		
	}
        
        public Plaza recuperarPlaza(int numeroPlaza){
		return dao.recuperarPlaza(numeroPlaza);		
	}
        
        public boolean modificarPlaza(Plaza p) {
		return dao.modificarPlaza(p);
	}
        
	public void salir(){
		dao.cerrarConexion();
	}
}
