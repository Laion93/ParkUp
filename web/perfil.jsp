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
    <div  id="newvehiculo">
        <h1><b>Datos de <%=((Usuario)session.getAttribute("usuario")).getNombre()%></b></h1>
            <table>
                <tr>
                    <td class="td"><p>DNI </p></td>
                    <td><%=((Usuario)session.getAttribute("usuario")).getDNI()%></td>
                <tr>
                <tr>
                    <td class="td">Nombre </td>
                    <td><%=((Usuario)session.getAttribute("usuario")).getNombre()%></td>
                </tr>
                <tr>
                    <td class="td">Apellidos </td>
                    <td><%=((Usuario)session.getAttribute("usuario")).getApellido()%></td>
                </tr>
                <tr>
                    <td class="td">Telefono </td>
                    <td><%=((Usuario)session.getAttribute("usuario")).getTelefono()%></td>
                </tr>
                <tr>
                    <td class="td">Email </td>
                    <td><%=((Usuario)session.getAttribute("usuario")).getEmail()%></td>
                </tr>
             </table>
    </div>
    
    <%ArrayList<Vehiculo> vehiculos = (ArrayList)session.getAttribute("vehiculos");%>
    <div>
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
            <div class="botonperfil">
                <a href="LiberarPlaza?nombrePlaza=<%=vehiculo.getNombrePlaza()%>">Liberar Plaza</a><br>
            </div>
        <%}%>
            <div>
                <a href="EliminarVehiculo?matricula=<%=vehiculo.getMatricula()%>&&nombrePlaza=<%=vehiculo.getNombrePlaza()%>">Eliminar vehiculo</a>
            </div>
        <hr>
    <%}%>
    

</div>

    <%@include file="footer.html" %>
</body>

</html>