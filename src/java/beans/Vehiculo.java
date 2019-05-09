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
    
    String tipoVehiculo;
    boolean electrico;
    String matricula;
    private Usuario usuario;
    int plazaOcupada;
    
    
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

    public int getPlazaOcupada() {
        return plazaOcupada;
    }

    public void setPlazaOcupada(int plazaOcupada) {
        this.plazaOcupada = plazaOcupada;
    }
    
    @Override
    public String toString(){
        return("tipo: "+tipoVehiculo+"\nelectico? : "+electrico+"\nmatricula: "+matricula);
    }
}
