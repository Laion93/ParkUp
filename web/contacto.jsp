<!DOCTYPE html>
<html lang="es">
    <%@include file="head.html" %>
    
    <body>
        <%if(session.getAttribute("usuario")!=null){%>    
           <%@include file="header.jsp"%>
        <%}else{%>
            <%@include file="header-login.jsp"%>
        <%}%>   
        
        <center class="paginacontacto box">
            <form action="respuesta.jsp" method="post" name="formulario">
                <input type="hidden" name="contacto" value="Formulario de Contacto"><!-- Campo oculto para enviar datos al php -->    
                <fieldset>
                    <ol>
                        <li>
                            <input type="text" name="nombre" placeholder="Nombre" required>
                        </li>
                        <li>
                            <br>
                            <input type="email" name="email" placeholder="E-mail" required>
                        </li>
                        <li>
                            <textarea name="mensaje" placeholder=" Mensaje" rows="10" cols="40"></textarea>
                        </li>
                        <li>
                        <input class="boton" type="submit" name="submit" value="Enviar"></li>
                    </ol>
                </fieldset>
            </form>
        </center>


        <%@include file="footer.html" %>
    </body>

</html>