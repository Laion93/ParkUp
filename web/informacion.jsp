<%-- 
    Document   : informacion
    Created on : 07-may-2019, 20:02:49
    Author     : Cris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	
<%@include file="head.html" %>
<body class="paginainformacion">
<%if(session.getAttribute("usuario")!=null){%>    
   <%@include file="header.jsp"%>
<%}else{%>
    <%@include file="header-login.jsp"%>
<%}%>   

<!--CONTENIDO-->
<center class="box">

<h1><b>¿Cómo funciona ParkUp?</b></h1>
<br>

<div class="row">

<h3><b>Registra un vehículo</b></h3>
<br>
<div class="row margin-top-2-3">

    <img class="img-responsive" width="260px" src="images/comofunciona-reserva-blue.png" alt="Reserva tu plaza"/>
    <p><a href="registro.jsp">Registrate</a> y si ya estás registrado <a href="login.jsp">inicia sesión.</a> <br>
        Registra todos los vehículo que quieras desde la pestaña "<a href="vehiculo_nuevo.jsp">Registrar vehiculo</a>" del menú.
    </p>
<br>

<h3><b>Reserva tu plaza</b></h3>
<br>
<img class="img-responsive" width="260px" src="images/comofunciona-ticket-blue.png" alt="Aparca "/></p>
<p>En el mapa del parking, elige la plaza que deseas reservar y selecciona la matrícula del vehículo que quieres utilizar para esa plaza.<br>
    Lo puedes hacer en la ventana a la que te redirigimos cuando seleccionas la plaza.<br>
    Recuerda que la plaza seleccioanda solo podrá ser ocupada por vehículos del mismo tipo.<br>
    Los coches electricos puedes aparcarse en plaza de coche convencional pero no al revés.
</p>
</p> <br>

<h3><b>Eliminar vehículo</b></h3>
<br>
<img class="img-responsive" width="260px" src="images/comofunciona-justificante-blue.png" alt="Presenta el justificante"/></p>
<p>
    En "<a href="perfil.jsp">Mi cuenta</a>" puedes ver los vehículos que ahora mismo tienes con plaza reservada y puedes eliminarlos en cualquier momento.
</p>

</div>

</div>
</center>
<%@include file="footer.html" %>
</body>

</html>