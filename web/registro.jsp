<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--El formulario HTML envía un request por get a esta misma página jsp, la cual 
verifica la existencia de dicho request, genera un bean con los datos y lo envía 
a la página especificada en el atributo "page" de jsp:forward-->

<% if(request.getParameter("email")!=null){
    if(request.getParameter("pass").equals(request.getParameter("pass2"))){%>
        
        <jsp:useBean id="usuario" class="beans.Usuario" scope="request">
            <jsp:setProperty name="usuario" property="*"/>
        </jsp:useBean>
        <%request.setAttribute("usuario", usuario);%>

        <jsp:forward page="RegistroUsuario"/>
    <%}else{response.sendRedirect("registro.jsp?error=Las contrase"+URLEncoder.encode("ñ","UTF-8")+"as no coinciden");}%>
<%}%>

<!DOCTYPE html>
<html lang="es">

<%@include file="head.html" %>
<body>
<%@include file="header-login.jsp" %>

<!--CONTENIDO-->
<div class="col-1 box">
    <h1>Registrar nuevo usuario</h1><br>
    <form>
        <%if(request.getParameter("error") != null){%>
           <center>
            <div class="errorLogin">  
                <h3><%=request.getParameter("error")%></h3>
            </div><br>
            </center>
        <%}%>
        
        <input type="email" name="email" placeholder="Email" required><br><br>
        <input type="password" name="pass" placeholder="Contraseña" minlength="3" required><br><br>
        <input type="password" name="pass2" placeholder="Confirmar contraseña"><br><br>
        <input type="text" name="nombre" placeholder="Nombre" maxlength="20" required><br><br>
        <input type="text" name="apellido" placeholder="Apellido" maxlength="30" required><br><br>
        <input type="text" name="DNI" placeholder="NIF/NIE" maxlength="10" required><br><br>
        <input type="tel" name="telefono" placeholder="Teléfono" maxlength="9" required><br><br>
        <input type="submit"><br><br>
    </form>
</div>

<%@include file="footer.html" %>
</body>

</html>
