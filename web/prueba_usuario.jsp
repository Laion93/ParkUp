<%@page import="beans.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Los datos enviados en el bean son:</h1>
        
        <h4>Usuario</h4>
        nombre: <%=((Usuario)request.getAttribute("usuario")).getNombre()%><br>
        apellido: <%=((Usuario)request.getAttribute("usuario")).getApellido()%><br>
        DNI: <%=((Usuario)request.getAttribute("usuario")).getDNI()%><br>
        telefono: <%=((Usuario)request.getAttribute("usuario")).getTelefono()%><br>
        email: <%=((Usuario)request.getAttribute("usuario")).getEmail()%><br>
        pass: <%=((Usuario)request.getAttribute("usuario")).getPass()%><br>
    </body>
</html>
