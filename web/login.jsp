<!DOCTYPE html>
<html lang="es">
    
<%String mensajeError = (String) request.getAttribute("mensajeError");%>

<%@include file="head.html" %>

<body>
<%@include file="header-login.jsp" %>

<!--CONTENIDO-->
<div class="col-1 box">
    <h1>Log In</h1><br>
    <form action="login" method="POST">
          
        <%if(mensajeError != null){%>
           <center>
            <div class="errorLogin">  
                <h3><%=mensajeError%></h3>
            </div><br>
            </center>
        <%}%>

        <input type="email" name="email" placeholder="Email"><br><br>
        <input type="password" name="pass" placeholder="Contraseña"><br><br>
        <input type="submit"><br>
    </form><br>
    ¿No tiene usuario? <a href="registro.jsp">Regístrese aquí</a>
</div>

<%@include file="footer.html" %>
</body>

</html>