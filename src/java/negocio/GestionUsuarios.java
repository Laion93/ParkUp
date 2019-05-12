/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import beans.Usuario;
import dao.UsuarioDao;
import java.util.ArrayList;

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
	
	public Usuario recuperarUsuario(String email) {
		return dao.recuperarUsuario(email);
	}
        
        public ArrayList<Usuario> recuperarUsuarios() {
		return dao.recuperarUsuarios();
	}
	
        public boolean eliminarUsuario(String email) {
		return dao.eliminarUsuario(email);
	}
        
	public void salir(){
		dao.cerrarConexion();
	}
}
