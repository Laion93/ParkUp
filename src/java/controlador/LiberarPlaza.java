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
import negocio.GestionUsuarios;

/**
 *
 * @author Manchita
 */
@WebServlet(name = "LiberarPlaza", urlPatterns = {"/LiberarPlaza"})
public class LiberarPlaza extends HttpServlet {

    GestionPlazas gestionPlazas;
    GestionUsuarios gestionUsuarios;
    
    public LiberarPlaza() {
        super();
       gestionPlazas = new GestionPlazas();
       gestionUsuarios= new GestionUsuarios();
       
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
        
                HttpSession sesion= request.getSession(false);
		if(sesion!=null){
		Usuario user =(Usuario)sesion.getAttribute("usuario");
		int numeroPlaza = Integer.parseInt(request.getParameter("numeroPlaza"));
                Vehiculo v = (Vehiculo) sesion.getAttribute("Vehiculo");
                
		gestionPlazas.liberarPlaza(v);
		
		sesion.setAttribute("usuario",user);// opcional
		response.sendRedirect("mapa.jsp");
		}else{
			response.sendRedirect("login.html");
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
   