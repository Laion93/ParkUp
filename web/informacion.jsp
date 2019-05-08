<%-- 
    Document   : informacion
    Created on : 07-may-2019, 20:02:49
    Author     : Cris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">

	<link rel="icon" type="image/png" sizes="32x32" href="img/logo-provisional.png">
	
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">
	<link rel="stylesheet" href="css/stylebody.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/main.js"></script>
				
	<title>Parkup</title>

	<meta name="description" content="Proyecto de aparcamiento">		
	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

</head>
<body class="paginainformacion">
	<!--MOBILE-->
	<header class="col-1 mobile">
		<div class="col-1-3 mobile-bell"><i class="fas fa-bell fa-2x"></i></div>
		<a href="Plazas"><div class="col-1-3"><img src="img/logo-provisional.png"></div></a>
		<div class="col-1-3 mobile-menu" id="desplegable"><i class="fas fa-bars fa-2x"></i></div>
                
                <div class="col-1">
        </div>
	</header>
        <div class="col-1 desplegable mobile-nav">
            <div class="col-1-2">&nbsp;</div>
                <div class="col-1-2"  id="fondomenu">
                    <ul>
                        <li> Nombre usuario</li>
                        <li><a href="#">Mi cuenta</a></li>
                        <li><a href="#">Alertas</a></li>
                        <li><a href="nosotros.html">Nosotros</a></li>
                        <br>
                    </ul>
                </div>
        </div>
    
	<!--DESKTOP-->
	<header>
		<nav class="col-1 desktop">
			<div class="col-1-5"><a href="Plazas"><img src="img/logo-provisional.png"></a></div>
			<div class="col-1-5 menu"><a href="promociones.html">Promociones</a></div>
			<div class="col-1-5 menu"><a href="informacion.html">Información</a></div>
			<div class="col-1-5 menu"><a href="contacto.html">Contacto</a></div>
			<div class="col-1-5"><i class="fas fa-user fa-1x mobile-desktop"></i></div>
		</nav>	
        <div class="col-1">
            <div class="col-1 desplegable-desktop visible">
                <div class="col-1-2">&nbsp;</div>
                <div class="col-1-2"  id="fondomenu">
                    <ul>
                        <li> Nombre usuario</li>
                        <li><a href="#">Mi cuenta</a></li>
                        <li><a href="#">Alertas</a></li>
                        <li><a href="nosotros.html">Nosotros</a></li>
                        <br>
                    </ul>
                </div>
            </div>
        </div>
    </header>


<center>

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
	<!--FOOTER-->
	<footer class="col-1 footer">
		<div class="col-1-2 footer-left">
			<p><i class="fas fa-phone"></i>&nbsp; 912345678</p>
			<br>
			<p><i class="fas fa-mobile-alt"></i>&nbsp; 612345789</p>
			<br>
			<p><i class="fas fa-map-marker-alt"></i>&nbsp; C/ Pepita Pérez, 58.</p>
			<br><br>
		</div>
		<div class="col-1-2 footer-right">
			<p><i class="fab fa-instagram"></i>&nbsp; @Parkup</p>
			<br>
			<p><i class="fab fa-facebook-square"></i>&nbsp; Parkup</p>
			<br>
			<p><i class="fab fa-twitter-square"></i>&nbsp; @Parkup</p>
			<br><br>
		</div>
		<div class="col-1">
			&copy; Todos los derechos reservados 2019.
		</div>
	</footer>
</body>

</html>