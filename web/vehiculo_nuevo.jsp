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
<body>
<!--MOBILE-->
<header class="col-1 mobile">
    <div class="col-1-3 mobile-bell"><i class="fas fa-bell fa-2x"></i></div>
    <a href="Plazas"><div class="col-1-3"><img src="img/logo-provisional.png"></div></a>
    <div class="col-1-3 mobile-menu" id="desplegable"><i class="fas fa-bars fa-2x"></i></div>
</header>
<nav class="col-1 mobile-nav mobile desplegable">
    <ul>
        <li><i class="fas fa-user fa-1x"></i><span>&nbsp;&nbsp; Nombre usuario</span></li>
        <li><a href="#">Mi cuenta</a></li>
        <li><a href="#">Promociones</a></li>
        <li><a href="nosotros.html">Nosotros</a></li>
        <li><a href="informacion.html">Información</a></li>
        <li><a href="contacto.html">Contacto</a></li>
        <br>
    </ul>
</nav>

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
    <div class="col-1 desplegable-desktop">
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

<!--CONTENIDO-->
<div class="col-1 box">
    <h1>Registre su vehículo</h1><br>
    <form>
        <select name="tipovehiculo" required>
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

<!--FOOTER-->
<footer class="col-1 footerbottom">
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