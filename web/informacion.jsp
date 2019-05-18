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

</br></br><h6><b>¿Cómo funciona ParkUp?</b></h6>

<div class="row">

<h3><b>Reserva tu plaza</b></h3>
<div class="row margin-top-2-3">

         <p>   <img class="img-responsive" width="260px" src="images/comofunciona-reserva-blue.png" alt="Reserva tu plaza"/></p>
<p>Haz tu reserva de una plaza de parking a través ParkUp,seleccionando una fecha de entrada de na fecha de salida.</p>
<br>
<h3><b>Aparca tu coche</b></h3>

            <img class="img-responsive" width="260px" src="images/comofunciona-ticket-blue.png" alt="Aparca "/></p>
<p>Cuando llegue el día de tu reserva, dirígete al parking y coge el ticket a la entrada.</p>
</p> <br>

<h3><b>Presenta el justificante</b></h3>

<img class="img-responsive" width="260px" src="images/comofunciona-justificante-blue.png" alt="Presenta el justificante"/></p>
<p>Después de aparcar, presenta el justificante de reserva en la cabina de control.</p>
</div>
 

<div class="row">
<div class="btn-group">
                <a class="btn-inverse-line" target="_blank"  href="informacion.html">¿Cómo hago una reserva?</a><a class="btn-inverse" ><a href="login.html">Reservar</a>
            </div>
</div>
</div>
</center>
<%@include file="footer.html" %>
</body>

</html>