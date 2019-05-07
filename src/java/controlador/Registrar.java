package controlador;

import beans.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.GestionUsuarios;

@WebServlet("/registrar")
public class Registrar extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    GestionUsuarios gestion;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registrar() {
        gestion= new GestionUsuarios();
        // TODO Auto-generated constructor stub
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
	String pass = request.getParameter("pass");
	String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
	String dni = request.getParameter("DNI");
	int telefono = Integer.parseInt(request.getParameter("telefono"));

        Usuario user = new Usuario();
        
        user.setEmail(email);
        user.setPass(pass);
        user.setNombre(nombre);
        user.setApellido(apellido);
        user.setDNI(dni);
        user.setTelefono(telefono);

        if(gestion.registrarUsuario(user)){
            response.sendRedirect("login.html");
        }else{
            response.sendRedirect("registro.jsp?error=noregistrado");
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
