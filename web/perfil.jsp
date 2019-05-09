<%@page import="java.util.ArrayList"%>
<%@page import="beans.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <%@include file="head.html" %>
<body>
    <%@include file="header.html" %>

<!--CONTENIDO-->
<div class="col-1 box">
    <%Usuario usuario=(Usuario)session.getAttribute("usuario");%>
    
    <%ArrayList<Vehiculo> vehiculos = (ArrayList)session.getAttribute("vehiculos");%>

    <h1><%=usuario.getNombre()%></h1><br><br>
    <%for (Vehiculo vehiculo : vehiculos){%>
    <label for="matricula">Matricula: </label>
    <span id="vehiculo"><%=vehiculo.getMatricula()%></span><br>
    <label for="tipo">Tipo de vehiculo: </label>
    <span id="tipo"><%=vehiculo.getTipovehiculo()%></span><br>
    <% if (vehiculo.isElectrico()) {%>Es eléctrico<%}%><br>
    <a href="EliminarVehiculo?matricula=<%=vehiculo.getMatricula()%>">Eliminar vehiculo</a>
      <hr>
    <%}%>
    
    <p><a href="vehiculo_nuevo.jsp">Registrar vehículo nuevo</a></p>
</div>

    <%@include file="footer.html" %>
</body>

</html>