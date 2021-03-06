/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

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
import negocio.GestionVehiculos;

/**
 *
 * @author informatica
 */
@WebServlet(name = "EliminarVehiculo", urlPatterns = {"/EliminarVehiculo"})
public class EliminarVehiculo extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    GestionVehiculos gestionVehiculos;
    GestionPlazas gestionPlazas;
    
    public EliminarVehiculo() {
        super();
       gestionVehiculos = new GestionVehiculos();
       gestionPlazas = new GestionPlazas();
    }

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        HttpSession session= request.getSession(false);
		if(session!=null){
                    
                    Usuario user = (Usuario)session.getAttribute("usuario");
                    
                    String matricula = request.getParameter("matricula");
                    String nombrePlaza = request.getParameter("nombrePlaza");

                    gestionPlazas.liberarPlaza(nombrePlaza);

                    gestionVehiculos.eliminarVehiculo(matricula);
                    
                    if(user.getPerfil().equals("administrador")){
                        response.sendRedirect("RecuperarUsuariosAdmin");
                    }else{
                        response.sendRedirect("Perfil");
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
