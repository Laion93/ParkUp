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

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/main.js"></script>
				
	<title>Parkup</title>

	<meta name="description" content="Proyecto de aparcamiento">		
	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

</head>
<body class="paginanosotros">
	<!--MOBILE-->
	<header class="col-1 mobile">
		<div class="col-1-3 mobile-bell"><i class="fas fa-bell fa-2x"></i></div>
		<a href="<%= request.getContextPath()+"/Plazas"%>"><div class="col-1-3"><img src="img/logo-provisional.png"></div></a> <!--No funciona la redireccion al servlet-->
		<div class="col-1-3 mobile-menu" id="desplegable"><i class="fas fa-bars fa-2x"></i></div>
	</header>
	<nav class="col-1 mobile-nav mobile desplegable">
		<ul>
			<li><i class="fas fa-user fa-1x"></i><span>&nbsp;&nbsp; Nombre usuario</span></li>
			<li><a href="#">Mi cuenta</a></li>
			<li><a href="#">Promociones</a></li>
			<li><a href="#">Alertas</a></li>
			<li><a href="nosotros.html"></a></li>
			<li><a href="informacion.html">Información</a></li>
			<li><a href="contacto.html">Contacto</a></li>
			<br>
		</ul>
	</nav>

	<!--DESKTOP-->
	<header>
		<nav class="col-1 desktop">
			<div class="col-1-5"><a href="index.html"><img src="img/logo-provisional.png"></a></div>
			<div class="col-1-5 menu"><a href="promociones.html">Promociones</a></div>
			<div class="col-1-5 menu"><a href="informacion.html">Información</a></div>
			<div class="col-1-5 menu"><a href="contacto.html">Contacto</a></div>
			<div class="col-1-5"><i class="fas fa-user fa-1x mobile-desktop"></i></div>
		</nav>	
		<div class="col-1">
		</div><div class="col-1-2">&nbsp;</div>
		<div class="col-1-2 desplegable-desktop">
			<ul>
				<li> Nombre usuario</li>
				<li><a href="#">Mi cuenta</a></li>
				<li><a href="#">Alertas</a></li>
				<li><a href="nosotros.html">Nosotros</a></li>
				<br>
			</ul>
	</div>
	</header>
    <div class="col-1">   
        <div class="col-1-3- empleado">
            <img src="img/empleado1.jpg" class="empleado">
            <h1>Alberto González</h1>
            <h2>Socio fundador y Creativo</h2>
            <br>
            <p>Alberto es el encargado de la parte visual de la página. 
                Su función es que entrar a nuestra app sea agradable teniendo
                en cuenta la experiencia de usuario (UX) y la funcionalidad.</p>
        </div>
        <div class="col-1-3- ">
            <img src="img/empleado2.jpg" class="empleado">
            <h1>María José Manzano</h1>
            <h2>Socia fundadora y Desarrolladora front-end</h2>
            <br>
            <p>Alberto es el encargado de la parte visual de la página. 
                Su función es que entrar a nuestra app sea agradable teniendo
                en cuenta la experiencia de usuario (UX) y la funcionalidad.</p>
        </div>
        <div class="col-1-3- empleado">
            <img src="img/empleado3.jpg" class="empleado">
            <h1>Alberto González</h1>
            <h2>Socio fundador y Contable</h2>
            <br>
            <p>Alberto es fundador y cabeza pensante de ParkUp. 
                Su función es que las cuentas cuadren y se pueda 
                expandir nuestro proyecto.</p>
        </div>
    </div>
    
    <div class="col-1">   
        <div class="col-1-3- empleado">
            <img src="img/empleado4.jpg" class="empleado">
            <h1>Manuela Fernández</h1>
            <h2>Desarrolladora Java</h2>
            <br>
            <p>Manuela es la encargada de la parte back-end de la web.
                Su función es que la aplicacion funcione conrrectamente
                programando todo aquello que no se ve.</p>
        </div>
        <div class="col-1-3- ">
            <img src="img/empleado5.jpg" class="empleado">
            <h1>Juan Pablo Verdaguer</h1>
            <h2>Desarrollador Java</h2>
            <br>
            <p>Pablo es el encargado de la parte back-end de la web.
                Su función es que la aplicacion funcione conrrectamente
                programando todo aquello que no se ve.</p>
        </div>
        <div class="col-1-3- empleado">
            <img src="img/empleado6.jpg" class="empleado">
            <h1>Federico Hernández</h1>
            <h2>Jefe de cuentas</h2>
            <br>
            <p>Alberto es el encargado de la Contabilidad.
                Su función es que las cuentas cuadren y se pueda 
                expandir nuestro proyecto</p>
        </div>
    </div>
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
