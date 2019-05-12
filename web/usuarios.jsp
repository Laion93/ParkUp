<%@page import="java.util.ArrayList"%>
<%@page import="beans.Vehiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <%@include file="head.html" %>
<body>
    <%@include file="header.jsp" %>

<!--CONTENIDO-->
<div  class="box">

    <%ArrayList<Usuario> usuarios = (ArrayList)session.getAttribute("usuarios");%>
    
    <%if(usuarios.isEmpty()){%>
        <center>
            <br><h1>En este momento no hay usuarios registrados.</h1><br>
        </center>
    <%}else{%>
        <center>
        <%for (Usuario u : usuarios){%>
      
            <br><br><br><h3><b>Datos del usuario con email: <%=u.getEmail()%></b></h2><br>
            <p>DNI: <%=u.getDNI()%></p>
            <p>Nombre: <%=u.getNombre()%></p>
            <p>Apellidos: <%=u.getApellido()%></p>
            <p>Teléfono: <%=u.getTelefono()%></p>
            <p>Contraseña: <%=u.getPass()%></p><br>
            <p><b>Vehículos que tiene registrados:</b></p>
            
            <%ArrayList<Vehiculo> vehiculosUsuario = (ArrayList) u.getVehiculos();%>
            
            <%for (Vehiculo v : vehiculosUsuario){%>
                <p>Matrícula: <%=v.getMatricula()%></p>
                <p>Tipo de vehículo: <%=v.getTipoVehiculo()%></p>
                <p>Eléctrico: <%if(!v.isElectrico()){%>Sí<%}else{%>No<%}%></p>
                <a href="EliminarVehiculo?matricula=<%=v.getMatricula()%>" style="color:#FF0000">Eliminar vehículo</a><br><br>
            <%}%>
            <a href="EliminarUsuarioAdmin?email=<%=u.getEmail()%>" style="color:#1E98FF">Eliminar usuario</a>
            
        <%}%>
        </center>
    <%}%>

</div>

    <%@include file="footer.html" %>
</body>

</html>
