<%-- 
    Document   : prueba
    Created on : Apr 26, 2019, 6:13:16 AM
    Author     : Leon
--%>

<%@page import="beans.Vehiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        Matricula: <%=((Vehiculo)request.getAttribute("vehiculo")).getMatricula()%><br>
        Tipo: <%=((Vehiculo)request.getAttribute("vehiculo")).getTipovehiculo()%><br>
        Electrico?: <%=((Vehiculo)request.getAttribute("vehiculo")).isElectrico()%><br>
    </body>
</html>
