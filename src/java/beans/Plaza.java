/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.List;

/**
 *
 * @author Manchita
 */

public class Plaza {
    
    private int numero;
    private boolean estado;
    private String tipoVehiculo;
    private String matriculaVehiculo;
    private boolean electrico;
    private String nombrePlaza;
    private List<Plaza> plazas;
    
    public Plaza(){}

    public Plaza(int numero, boolean estado, String tipoVehiculo, String matriculaVehiculo, boolean electrico, String nombrePlaza){
        this.numero = numero;
        this.estado = estado;
        this.tipoVehiculo = tipoVehiculo;
        this.matriculaVehiculo = matriculaVehiculo;
        this.electrico = electrico;
        this.nombrePlaza = nombrePlaza;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public String getTipoVehiculo() {
        return tipoVehiculo;
    }

    public void setTipoVehiculo(String tipoVehiculo) {
        this.tipoVehiculo = tipoVehiculo;
    }

    public String getMatriculaVehiculo() {
        return matriculaVehiculo;
    }

    public void setMatriculaVehiculo(String matriculaVehiculo) {
        this.matriculaVehiculo = matriculaVehiculo;
    }

    public boolean isElectrico() {
        return electrico;
    }

    public void setElectrico(boolean electrico) {
        this.electrico = electrico;
    }

    public List<Plaza> getPlazas() {
        return plazas;
    }

    public void setPlazas(List<Plaza> plazas) {
        this.plazas = plazas;
    }

    public String getNombrePlaza() {
        return nombrePlaza;
    }

    public void setNombrePlaza(String nombrePlaza) {
        this.nombrePlaza = nombrePlaza;
    }
 
}
