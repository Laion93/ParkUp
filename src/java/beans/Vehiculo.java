/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author pablo
 */
public class Vehiculo {
    
    private String tipoVehiculo;
    boolean electrico;
    private String matricula;
    private Usuario usuario;
    private String nombrePlaza;
//    private int numeroPlaza;
    
    
    public Vehiculo(){
        
    }
    
    public Vehiculo(String tipovehiculo, boolean electrico, String matricula){
        
        this.tipoVehiculo=tipovehiculo;
        this.electrico=electrico;
        this.matricula=matricula;
    }

    public String getTipoVehiculo() {
        return tipoVehiculo;
    }

    public void setTipoVehiculo(String tipovehiculo) {
        this.tipoVehiculo = tipovehiculo;
    }

    public boolean isElectrico() {
        return electrico;
    }

    public void setElectrico(boolean electrico) {
        this.electrico = electrico;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String getNombrePlaza() {
        return nombrePlaza;
    }

    public void setNombrePlaza(String nombrePlaza) {
        this.nombrePlaza = nombrePlaza;
    }

//    public int getNumeroPlaza() {
//        return numeroPlaza;
//    }
//
//    public void setNumeroPlaza(int numeroPlaza) {
//        this.numeroPlaza = numeroPlaza;
//    }
    
    @Override
    public String toString(){
        return("tipo: "+tipoVehiculo+"\nelectico? : "+electrico+"\nmatricula: "+matricula);
    }
}
