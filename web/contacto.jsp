<!DOCTYPE html>
<html lang="es">
    <%@include file="head.html" %>
    
    <body>
        <%@include file="header.html" %>
        
        <center class="paginacontacto box">
            <form action="respuesta.jsp" method="post" name="formulario">
                <input type="hidden" name="contacto" value="Formulario de Contacto"><!-- Campo oculto para enviar datos al php -->    
                <fieldset>
                    <ol>
                        <li>
                            <label>Nombre</label>
                            <br>
                            <input type="text" name="nombre" required>
                        </li>
                        <li>
                            <label>E-mail</label>
                            <br>
                            <input type="email" name="email" required>
                        </li>
                        <li>
                            <label>Mensaje</label>
                            <br>
                            <textarea name="mensaje" rows="10" cols="40"></textarea>
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