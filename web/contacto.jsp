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
            <!--Para que el formulario funcionara tendríamos que poner action="formulario.php" y así acceder a ese documento
            que se encuentra con los demás archivos .jsp
            Para que esto funcione necesitamos tener un dominio y un hosting web, por eso hemos creado una pagina: "respuesta.jsp" que simula
            el envío del formulario-->
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


        <!--En este caso se aplica footerbottom para que quede en una posicion absoluta 
        y quede abajo ya que el contenido no ocupa el total de alto de la pagina-->
        <%@include file="footerbottom.html" %>
    </body>

</html>