/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import beans.Usuario;
import beans.Vehiculo;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import negocio.GestionVehiculos;

/**
 *
 * @author Manchita
 */
@WebServlet(name = "reservaPlaza", urlPatterns = {"/reservaPlaza"})
public class ReservaPlaza extends HttpServlet {

    private static final long serialVersionUID = 1L;
       GestionVehiculos gestionVehiculo;
 
    public ReservaPlaza() {
        super();
        gestionVehiculo = new GestionVehiculos();
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
        
             HttpSession session = request.getSession(false);
		if(session != null){
                    Usuario user = (Usuario)session.getAttribute("usuario");


                    ArrayList<Vehiculo> vehiculos = (ArrayList)gestionVehiculo.recuperarVehiculosDeUsuario(user);
                    
                    if(vehiculos.isEmpty()){
                        String error = "Primero registre un vehículo";
                        response.sendRedirect("vehiculo_nuevo.jsp?error="+error);
                    }else{
                        session.setAttribute("vehiculos", vehiculos);	

                        String numeroPlaza = request.getParameter("numero");
                        String tipoVehiculo = request.getParameter("tipo");
                        String estado = request.getParameter("estado");

                        session.setAttribute("numeroPlaza", numeroPlaza);
                        session.setAttribute("tipoVehiculo", tipoVehiculo);
                        session.setAttribute("estado", estado);

                        response.sendRedirect("reservaPlaza.jsp");
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
