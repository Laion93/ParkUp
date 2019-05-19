<%@page import="java.util.ArrayList"%>
<%@page import="beans.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <%@include file="head.html" %>
<body>
    <%@include file="header.jsp" %>

<!--CONTENIDO-->
<div  class="box paginaperfil">
    
    <%ArrayList<Vehiculo> vehiculos = (ArrayList)session.getAttribute("vehiculos");%>
    <div id="newvehiculo">
        <p><a href="vehiculo_nuevo.jsp" class="newv">Registrar vehículo nuevo</a></p><br>
    </div>
    <br>
    <%for (Vehiculo vehiculo : vehiculos){%>
    <span><img src="images/<%=vehiculo.getTipoVehiculo()+((vehiculo.getNombrePlaza()!=null)?true:false)+vehiculo.isElectrico()%>.png" style="max-height: 100px;"/></span><br><br>
        <label for="matricula">Matricula: </label>
        <span id="vehiculo"><%=vehiculo.getMatricula()%></span><br>
        <%if(vehiculo.getNombrePlaza()!= null){%>
            Ocupando plaza: <%=vehiculo.getNombrePlaza()%><br>
            <%session.setAttribute("Vehiculo", vehiculo);%>	
            <a href="LiberarPlaza?nombrePlaza=<%=vehiculo.getNombrePlaza()%>">Liberar Plaza</a><br>
        <%}%>
        <a href="EliminarVehiculo?matricula=<%=vehiculo.getMatricula()%>&&nombrePlaza=<%=vehiculo.getNombrePlaza()%>">Eliminar vehiculo</a>
        <hr>
    <%}%>
    

</div>

    <%@include file="footer.html" %>
</body>

</html>