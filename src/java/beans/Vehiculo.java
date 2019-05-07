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
    
    String tipovehiculo;
    boolean electrico;
    String matricula;
    private Usuario usuario;
    
    
    public Vehiculo(){
        
    }
    
    public Vehiculo(String tipovehiculo, boolean electrico, String matricula){
        
        this.tipovehiculo=tipovehiculo;
        this.electrico=electrico;
        this.matricula=matricula;
    }

    public String getTipovehiculo() {
        return tipovehiculo;
    }

    public void setTipovehiculo(String tipovehiculo) {
        this.tipovehiculo = tipovehiculo;
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
    
    @Override
    public String toString(){
        return("tipo: "+tipovehiculo+"\nelectico? : "+electrico+"\nmatricula: "+matricula);
    }
}
