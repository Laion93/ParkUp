<%@page import="beans.Vehiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Los datos enviados en el bean son:</h1>
        
        <h4>Vehiculo</h4>
        Matricula: <%=((Vehiculo)request.getAttribute("vehiculo")).getMatricula()%><br>
        Tipo: <%=((Vehiculo)request.getAttribute("vehiculo")).getTipovehiculo()%><br>
        Electrico?: <%=((Vehiculo)request.getAttribute("vehiculo")).isElectrico()%><br>
    </body>
</html>
