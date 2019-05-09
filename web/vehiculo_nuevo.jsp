<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--El formulario HTML envía un request por get a esta misma página jsp, la cual 
verifica la existencia de dicho request, genera un bean con los datos y lo envía 
a la página especificada en el atributo "page" de jsp:forward-->

<% if(request.getParameter("matricula")!=null){%>
    <jsp:useBean id="vehiculo" class="beans.Vehiculo" scope="request">
        <jsp:setProperty name="vehiculo" property="*"/>
    </jsp:useBean>
    <%request.setAttribute("vehiculo", vehiculo);%>
    
    <jsp:forward page="RegistrarVehiculo"/> <!--Sustituir por nombre del controlador de destino-->

<%}%>


<!DOCTYPE html>
<html lang="es">

<%@include file="head.html" %>
<body>
<%@include file="header.html" %>

<!--CONTENIDO-->
<div class="col-1 box">
    <h1>Registre su vehículo</h1><br>
    <form>
        <select name="tipoVehiculo" required>
            <option value="" selected disabled hidden>Tipo de vehículo</option>
            <option value="coche">Coche</option>
            <option value="moto">Motocicleta</option>
            <option value="furgoneta">Furgoneta</option>
          </select><br><br>
        <input type="text" name="matricula" placeholder="Matrícula" required><br><br>
        <select name="electrico">
            <option value="" selected disabled>¿Vehículo eléctrico?</option>
            <option value="True">Si</option>
            <option value="False">No</option>
        </select><br><br>
        <input type="submit">
    </form><br><br>
</div>

<%@include file="footer.html" %>
</body>

</html>