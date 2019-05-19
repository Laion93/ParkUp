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
    
    <%Usuario u = (Usuario)session.getAttribute("usuario");%>
    
    <center>
        
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

            <%String mensaje = request.getParameter("mensaje");%>
            <%if(mensaje != null){%>
                <div id="newvehiculo">
                    <h1>De momento no tiene vehiculos registrados, si lo desea puede registrar uno ahora:</h1><br><br>
                    <p><a href="vehiculo_nuevo.jsp" class="newv">Registrar vehículo nuevo</a></p><br>
                </div>
            <%}else{%>
                <br>
                <%ArrayList<Vehiculo> vehiculos = (ArrayList)session.getAttribute("vehiculos");%>

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
            <%}%>
</div>
    <%@include file="footer.html" %>
</body>

</html>