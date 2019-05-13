<%@page import="java.util.ArrayList"%>
<%@page import="beans.Vehiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <%@include file="head.html" %>
<body>
    <%@include file="header.jsp" %>

<!--CONTENIDO-->
<div  class="box paginausuarios">

    <%ArrayList<Usuario> usuarios = (ArrayList)session.getAttribute("usuarios");%>
    
    <%if(usuarios.isEmpty()){%>
        <center>
            <br><h1>En este momento no hay usuarios registrados.</h1><br>
        </center>
    <%}else{%>
        <center>
        <%for (Usuario u : usuarios){%>
            <h1><b>Datos del usuario con email: <%=u.getEmail()%></b></h1><br>
            <table>
                <tr>
                    <td class="td"><p>DNI </p></td>
                    <td><%=u.getDNI()%></td>
                <tr>
                <tr>
                    <td class="td">Nombre </td>
                    <td><%=u.getNombre()%></td>
                </tr>
                <tr>
                    <td class="td">Apellidos </td>
                    <td><%=u.getApellido()%></td>
                </tr>
                <tr>
                    <td class="td">Teléfono </td>
                    <td><%=u.getTelefono()%></td>
                </tr>
                <tr>
                    <td class="td">Contraseña </td>
                    <td><%=u.getPass()%></td>
                </tr>
             </table>
                <br>
                
            <p><b>Vehículos que tiene registrados:</b></p>
            <br>

            <%ArrayList<Vehiculo> vehiculosUsuario = (ArrayList) u.getVehiculos();%>
            
            <%for (Vehiculo v : vehiculosUsuario){%>
            <table>
                <tr>
                    <td class="td">Matrícula </td>
                    <td><%=v.getMatricula()%></td>
                </tr>
                <tr>
                    <td class="td">Tipo de vehículo </td>
                    <td><%=v.getTipoVehiculo()%></td>
                </tr>
                <tr>
                    <td class="td">Eléctrico </td>
                    <td><%if(!v.isElectrico()){%>Sí<%}else{%>No<%}%></td>
                </tr>
            </table>
            <br>
            <a href="EliminarVehiculo?matricula=<%=v.getMatricula()%>" style="color:#FF0000">Eliminar vehículo</a><br><br>
            <%}%>
            <br>
            <a href="EliminarUsuarioAdmin?email=<%=u.getEmail()%>" style="color:#1E98FF">Eliminar usuario</a>
            <hr>
            
        <%}%>
        </center>
    <%}%>

</div>

    <%@include file="footer.html" %>
</body>

</html>
