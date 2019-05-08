<!DOCTYPE html>
<html lang="es">
    <%@include file="head.html" %>
    
    <body>
        <%@include file="header.html"%>
        
	<!--CONTENIDO-->
        <div class="col-1 box" id="promo">
            <h1>¿Tienes un código promocional?</h1>
            <br>
            <input type="text" id="codigo-promocional">
            <input type="button" id="add-codigo" name="add" value="Añadir">
        </div>
	
        <%@include file="footer.html" %>
    </body>

</html>