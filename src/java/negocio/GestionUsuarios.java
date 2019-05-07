/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import beans.Usuario;
import dao.UsuarioDao;

/**
 *
 * @author Manchita
 */
public class GestionUsuarios {
    
    UsuarioDao dao;
	
	public GestionUsuarios(){
		dao = new UsuarioDao();
	}

	public boolean registrarUsuario(Usuario user) {
		return dao.registrarUsuario(user);
	}

	public Usuario logarUsuario(Usuario user) {
		Usuario userRecogido = dao.recuperarUsuario(user.getEmail());
		if(userRecogido!=null && user.getPass().equals(userRecogido.getPass()))
			return userRecogido;
		else
		return null;
	}
	
	public Usuario recuperarUsuario(String dni) {
		return dao.recuperarUsuario(dni);
	}
	
        public boolean eliminarUsuario(String dni) {
		return dao.eliminarUsuario(dni);
	}
        
	public void salir(){
		dao.cerrarConexion();
	}
}
