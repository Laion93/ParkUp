/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import beans.Plaza;
import beans.Usuario;
import beans.Vehiculo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import negocio.GestionPlazas;
import negocio.GestionUsuarios;
import negocio.GestionVehiculos;

/**
 *
 * @author Manchita
 */
@WebServlet(name = "OcuparPlaza", urlPatterns = {"/OcuparPlaza"})
public class OcuparPlaza extends HttpServlet {

    GestionPlazas gestionPlazas;
    GestionUsuarios gestionUsuarios;
    GestionVehiculos gestionVehiculos;
    
    public OcuparPlaza() {
        super();
       gestionPlazas = new GestionPlazas();
       gestionUsuarios = new GestionUsuarios();
       gestionVehiculos = new GestionVehiculos();
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            //response.setContentType("text/html;charset=UTF-8");
        
                HttpSession sesion= request.getSession(false);
		if(sesion!=null){

                    Plaza p = (Plaza) sesion.getAttribute("plazaSeleccionada");
                    
                    int numeroPlaza = p.getNumero();
                    
                    String matricula = request.getParameter("vehiculoSeleccionado");

                    Vehiculo v = gestionVehiculos.recuperarVehiculo(matricula);
                    
                    if(p.getTipoVehiculo().equals(v.getTipoVehiculo()) && p.isElectrico() == false){
                        
                        gestionPlazas.ocuparPlaza(numeroPlaza, v);

                        response.sendRedirect("Plazas");
                        
                    }else if(p.getTipoVehiculo().equals("coche") && v.getTipoVehiculo().equals("coche") && p.isElectrico() == v.isElectrico()){
                    
                        gestionPlazas.ocuparPlaza(numeroPlaza, v);

                        response.sendRedirect("Plazas");
                        
                    }else{
                        String error = "Vehículo no válido.";
                        response.sendRedirect("reservaPlaza.jsp?error="+error);
                    }
		}else{
			response.sendRedirect("login.jsp?error=nologueado");
		}
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
