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
                        <li><a href="nosotros.html">Nosotros</a></li>
                        <br>
                    </ul>
                </div>
        </div>
    
	<!--DESKTOP-->
	<header>
		<nav class="col-1 desktop">
                    <div class="col-1-5 logo"><a href="Plazas"><img src="img/logo-provisional.png"></a></div>
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
                        <li><a href="nosotros.html">Nosotros</a></li>
                        <br>
                    </ul>
                </div>
            </div>
        </div>
    </header>

    <div class="col-1">   
        <div class="col-1-3- empleado">
            <img src="images/empleado1.jpg" class="empleado">
            <h1>Alberto González</h1>
            <h2>Socio fundador y Creativo</h2>
            <br>
            <p>Alberto es el encargado de la parte visual de la empresa.
            Dentro de sus funciones está mantener la identidad de marca a través 
            de la publicidad y redes sociales.</p>
        </div>
        <div class="col-1-3- empleado">
            <img src="images/empleado2.jpg" class="empleado">
            <h1>María José Manzano</h1>
            <h2>Socia fundadora y Desarrolladora front-end</h2>
            <br>
            <p>María José es la encargada de la parte visual de la página. 
                Su función es que entrar a nuestra app sea agradable teniendo
                en cuenta la experiencia de usuario (UX) y la funcionalidad.</p>
        </div>
        <div class="col-1-3- empleado">
            <img src="images/empleado3.jpg" class="empleado">
            <h1>Manuela Montero</h1>
            <h2>Socia fundadora y Contable</h2>
            <br>
            <p>Manuela es fundadora y contable de ParkUp. 
                Su función es que las cuentas cuadren y se pueda 
                expandir nuestro proyecto.</p>
        </div>
    </div>
    
    <div class="col-1">   
        <div class="col-1-3- empleado">
            <img src="images/empleado4.jpg" class="empleado">
            <h1>Patricia Fernández</h1>
            <h2>Desarrolladora Java</h2>
            <br>
            <p>Patricia es la encargada de la parte back-end de la web.
                Su función es que la aplicacion funcione conrrectamente
                programando todo aquello que no se ve.</p>
        </div>
        <div class="col-1-3- empleado">
            <img src="images/empleado5.jpg" class="empleado">
            <h1>Juan Pablo Verdaguer</h1>
            <h2>Desarrollador Java</h2>
            <br>
            <p>Juan Pablo forma parte del equipo de desarrollo de software.
                Su función es que la aplicacion funcione conrrectamente
                implementando toda la lógica necesaria.</p>
        </div>
        <div class="col-1-3- empleado">
            <img src="images/empleado6.jpg" class="empleado">
            <h1>Federico Hernández</h1>
            <h2>Jefe de cuentas</h2>
            <br>
            <p>Federico es el encargado de la Contabilidad.
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
