<%-- 
    Document   : mapa
    Created on : 03-may-2019, 16:59:06
    Author     : Manchita
--%>

<%@page import="beans.Usuario"%>
<%@page import="beans.Plaza"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ParkUp</title>
        <meta name="description" content="Proyecto de aparcamiento">
	<meta name="viewport" content="width=device-width">

	<link rel="icon" type="image/png" sizes="32x32" href="img/logo-provisional.png">
	
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/grid.css">
        <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">
	<link type="text/css" rel="stylesheet" href="css/mapa.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/mapa.js"></script>	
	<!--<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>-->	
        
    </head>
    <body>
        <!--MOBILE-->
	<header class="col-1 mobile">
		<div class="col-1-3 mobile-bell"><i class="fas fa-bell fa-2x"></i></div>
		<a href="index.html"><div class="col-1-3"><img src="img/logo-provisional.png"></div></a>
		<div class="col-1-3 mobile-menu" id="desplegable"><i class="fas fa-bars fa-2x"></i></div>
	</header>
	<nav class="col-1 mobile-nav mobile desplegable">
		<ul>
			<li><i class="fas fa-user fa-1x"></i><span>&nbsp;&nbsp; Nombre usuario</span></li>
			<li><a href="#">Mi cuenta</a></li>
			<li><a href="#">Promociones</a></li>
			<li><a href="#">Alertas</a></li>
			<li><a href="nosotros.html">Nosotros</a></li>
			<li><a href="informacion.html">Información</a></li>
			<li><a href="contacto.html">Contacto</a></li>
			<br>
		</ul>
	</nav>

	<!--DESKTOP-->
	<header>
		<nav class="col-1 desktop">
			<div class="col-1-5"><a href="mapa.jsp"><img src="img/logo-provisional.png"></a></div>
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
                    <%
                        HttpSession sesion = request.getSession(false);
                        Usuario usuarioRecogido = (Usuario)sesion.getAttribute("usuario");
                    %>
                    <li><%=usuarioRecogido.getNombre()%></li>
                    <li><a href="vehiculo_nuevo.jsp">Mi cuenta</a></li>
                    <li><a href="#">Alertas</a></li>
                    <li><a href="nosotros.html">Nosotros</a></li>
                    <br>
                </ul>
        </div>
        </div>
    </div>
	</header>
	
	
<div class="col-1">
    <!--<div class="wrapper">-->
    
        <%
        ArrayList<Plaza> plazas = (ArrayList<Plaza>) sesion.getAttribute("plazas");
        if(plazas != null){         
        %>  
        <div id="content"><br><br>
            
            <div id="isla" class="zona_naranja">  
            <%    
            for(int i=0;i<=7;i++){
                Plaza p=(Plaza)plazas.get(i);            
            %>  
                <image id="<%=i+1%>" src="images/<%=p.getTipoVehiculo()+p.isEstado()+p.isElectrico()%>.png" alt="Icono de un coche" class='<%=p.getTipoVehiculo()%>' onmouseover="MouseOver(<%=i+1%>)" onmouseout="MouseOut(<%=i+1%>, '<%=p.getTipoVehiculo()+p.isEstado()+p.isElectrico()%>')" onclick="Click(this, <%=i+1%>, '<%=p.getTipoVehiculo()%>', <%=p.isEstado()%>)">
            <%}%>
            </div>

            <div id="carretera_vertical_acceso">
                <image src="images/carretera_vertical_acceso.png" alt="Imagen de una carretera" class="carretera">
            </div>

            <div id="isla" class="zona_rosa">
            <%    
            for(int i=8;i<=15;i++){
                Plaza p=(Plaza)plazas.get(i);            
            %>  
                <image id="<%=i+1%>" src="images/<%=p.getTipoVehiculo()+p.isEstado()+p.isElectrico()%>.png" alt="Icono de un coche" class='<%=p.getTipoVehiculo()%>' onmouseover="MouseOver(<%=i+1%>)" onmouseout="MouseOut(<%=i+1%>, '<%=p.getTipoVehiculo()+p.isEstado()+p.isElectrico()%>')" onclick="Click(this, <%=i+1%>, '<%=p.getTipoVehiculo()%>', <%=p.isEstado()%>)">
            <%}%>
            </div>

            <div id="carretera_horizontal">
                <image src="images/carretera_horizontal.png" alt="Imagen de una carretera" class="carretera">
            </div>

            <div id="isla" class="zona_amarilla">
            <%    
            for(int i=16;i<=23;i++){
                Plaza p=(Plaza)plazas.get(i);            
            %>  
                <image id="<%=i+1%>" src="images/<%=p.getTipoVehiculo()+p.isEstado()+p.isElectrico()%>.png" alt="Icono de un coche" class='<%=p.getTipoVehiculo()%>' onmouseover="MouseOver(<%=i+1%>)" onmouseout="MouseOut(<%=i+1%>, '<%=p.getTipoVehiculo()+p.isEstado()+p.isElectrico()%>')" onclick="Click(this, <%=i+1%>, '<%=p.getTipoVehiculo()%>', <%=p.isEstado()%>)">
            <%}%>
            </div>

            <div id="carretera_vertical_1">
                <image src="images/carretera_vertical.png" alt="Imagen de una carretera" class="carretera">
            </div>

            <div id="isla" class="zona_marron">
            <%    
            for(int i=24;i<=31;i++){
                Plaza p=(Plaza)plazas.get(i);            
            %>  
                <image id="<%=i+1%>" src="images/<%=p.getTipoVehiculo()+p.isEstado()+p.isElectrico()%>.png" alt="Icono de un coche" class='<%=p.getTipoVehiculo()%>' onmouseover="MouseOver(<%=i+1%>)" onmouseout="MouseOut(<%=i+1%>, '<%=p.getTipoVehiculo()+p.isEstado()+p.isElectrico()%>')" onclick="Click(this, <%=i+1%>, '<%=p.getTipoVehiculo()%>', <%=p.isEstado()%>)">
            <%}%>
            </div>

            <div id="carretera_horizontal">
                <image src="images/carretera_horizontal.png" alt="Imagen de una carretera" class="carretera">
            </div>

            <div id="isla" class="zona_morada">
            <%    
            for(int i=32;i<=39;i++){
                Plaza p=(Plaza)plazas.get(i);            
            %>  
                <image id="<%=i+1%>" src="images/<%=p.getTipoVehiculo()+p.isEstado()+p.isElectrico()%>.png" alt="Icono de un coche" class='<%=p.getTipoVehiculo()%>' onmouseover="MouseOver(<%=i+1%>)" onmouseout="MouseOut(<%=i+1%>, '<%=p.getTipoVehiculo()+p.isEstado()+p.isElectrico()%>')" onclick="Click(this, <%=i+1%>, '<%=p.getTipoVehiculo()%>', <%=p.isEstado()%>)">
            <%}%>
            </div>

            <div id="carretera_vertical_2">
                <image src="images/carretera_vertical.png" alt="Imagen de una carretera" class="carretera">
            </div>

            <div id="isla" class="zona_gris">
            <%    
            for(int i=40;i<=47;i++){
                Plaza p=(Plaza)plazas.get(i);            
            %>  
                <image id="<%=i+1%>" src="images/<%=p.getTipoVehiculo()+p.isEstado()+p.isElectrico()%>.png" alt="Icono de un coche" class='<%=p.getTipoVehiculo()%>' onmouseover="MouseOver(<%=i+1%>)" onmouseout="MouseOut(<%=i+1%>, '<%=p.getTipoVehiculo()+p.isEstado()+p.isElectrico()%>')" onclick="Click(this, <%=i+1%>, '<%=p.getTipoVehiculo()%>', <%=p.isEstado()%>)">
            <%}%>
            </div>
    <%}%>
            <br><br>
        </div>
    <!--</div>-->
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
