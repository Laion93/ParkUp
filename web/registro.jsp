<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--El formulario HTML envía un request por get a esta misma página jsp, la cual 
verifica la existencia de dicho request, genera un bean con los datos y lo envía 
a la página especificada en el atributo "page" de jsp:forward-->

<% if(request.getParameter("DNI")!=null){%>
    <jsp:useBean id="usuario" class="beans.Usuario" scope="request">
        <jsp:setProperty name="usuario" property="*"/>
    </jsp:useBean>
    <%request.setAttribute("usuario", usuario);%>
    
    <jsp:forward page="RegistroUsuario"/>

<%}%>

<!DOCTYPE html>
<html lang="es">

<%@include file="head.html" %>
<body>
<%@include file="header.html" %>

<!--CONTENIDO-->
<div class="col-1 box">
    <h1>Registrar nuevo usuario</h1><br>
    <form>
        <input type="email" name="email" placeholder="Email"><br><br>
        <input type="password" name="pass" placeholder="Contraseña"><br><br>
        <input type="password" name="pass2" placeholder="Confirmar contraseña"><br><br>
        <input type="text" name="nombre" placeholder="Nombre"><br><br>
        <input type="text" name="apellido" placeholder="Apellido"><br><br>
        <input type="text" name="DNI" placeholder="NIF/NIE"><br><br>
        <input type="tel" name="telefono" placeholder="Teléfono"><br><br>
        <input type="submit"><br><br>
    </form>
</div>

<%@include file="footer.html" %>
</body>

</html>
