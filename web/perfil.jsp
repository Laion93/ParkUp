<%@page import="java.util.ArrayList"%>
<%@page import="beans.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <%@include file="head.html" %>
<body>
    <%@include file="header.jsp" %>

<!--CONTENIDO-->
<div  class="box">
    
    <%ArrayList<Vehiculo> vehiculos = (ArrayList)session.getAttribute("vehiculos");%>
    <p><a href="vehiculo_nuevo.jsp">Registrar vehículo nuevo</a></p><br><br>
    <%for (Vehiculo vehiculo : vehiculos){%>
    <span><img src="images/<%=vehiculo.getTipoVehiculo()+((vehiculo.getPlazaOcupada()>0)?true:false)+vehiculo.isElectrico()%>.png" style="max-height: 100px;"/></span>
    <label for="matricula">Matricula: </label>
    <span id="vehiculo"><%=vehiculo.getMatricula()%></span><br>
    <%if(vehiculo.getPlazaOcupada()>0){%>Ocupando plaza numero: <%=vehiculo.getPlazaOcupada()%><br><%}%>
    <a href="EliminarVehiculo?matricula=<%=vehiculo.getMatricula()%>">Eliminar vehiculo</a>
      <hr>
    <%}%>
    

</div>

    <%@include file="footer.html" %>
</body>

</html>