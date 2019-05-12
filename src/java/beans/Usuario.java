/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author pablo
 */
public class Usuario {
    
    String nombre;
    String apellido;
    String DNI;
    int telefono;
    String email;
    String pass;
    String perfil;
    private ArrayList<Vehiculo> vehiculos;
    
    public Usuario(){
    
         vehiculos= new ArrayList<Vehiculo>();
    }
    
    public boolean add(Vehiculo miVehiculo) {
	return vehiculos.add(miVehiculo);
    }

    public Vehiculo get(String matricula) {
		for (Vehiculo vehiculo : vehiculos) {
			if(vehiculo.getMatricula()==matricula)
				return vehiculo;
		}
	        return null;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public ArrayList<Vehiculo> getVehiculos() {
        return vehiculos;
    }

    public void setVehiculos(ArrayList<Vehiculo> vehiculos) {
        this.vehiculos = vehiculos;
    }

        public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }
    
    @Override
    public String toString(){
        return("nombre: "+nombre+"\napellido: "+apellido+"\nDNI: "+DNI
                +"\ntelefono: "+ telefono+"\nemail: "+email
                +"\ncontrasena: "+pass);
    }
}
