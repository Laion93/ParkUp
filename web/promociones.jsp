<%if(session.getAttribute("usuario")==null){response.sendRedirect("login.jsp?error=nologueado");}%>
<!DOCTYPE html>
<html lang="es">
    <%@include file="head.html" %>
    
    <body>
        <%@include file="header.jsp"%>
        
	<!--CONTENIDO-->
        <div class="col-1 box" id="promo">
            <h1>¿Tienes un código promocional?</h1>
            <br>
            <input type="text" id="codigo-promocional">
            <input type="button" id="add-codigo" name="add" value="Añadir">
        </div>
	
        <!--En este caso se aplica footerbottom para que quede en una posicion absoluta 
        y quede abajo ya que el contenido no ocupa el total de alto de la pagina-->
        <%@include file="footerbottom.html" %>
    </body>

</html>