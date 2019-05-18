<!--MOBILE-->
<header class="col-1 mobile">
        <div class="col-1-3 mobile-user"><i class="fas fa-user fa-2x"></i></div>
        <div class="col-1-3"><a href="login.jsp"><img src="images/logo-provisional.png"></div>
        <div class="col-1-3 mobile-menu" id="desplegable"><i class="fas fa-bars fa-2x"></i></div>
</header>
<div class="col-1 desplegable mobile-nav">
    <!--<div class="col-1-2">&nbsp;</div>-->
        <div class="col-1-2"  id="fondomenu">
            <ul>
                <br>
                <li><a href="informacion.jsp">Informaci&oacute;n</a></li>
                <li><a href="nosotros.jsp">Nosotros</a></li>
                <li><a href="contacto.jsp">Contacto</a></li>
                <br>
            </ul>
        </div>
</div>

<!--DESKTOP-->
<header>
        <nav class="col-1 desktop">
            <div class="col-1-5 logo"><a href="login.jsp"><img src="images/logo-provisional.png" style="margin: 0 auto;"></div>
            <div class="col-1-5 menu"><a href="informacion.jsp">Informaci&oacute;n</a></div>
            <div class="col-1-5 menu"><a href="nosotros.jsp">Nosotros</a></div>
            <div class="col-1-5 menu"><a href="contacto.jsp">Contacto</a></div>
            <div class="col-1-5"></div>
        </nav>	
<div class="col-1">
    <div class="col-1 desplegable-desktop visible">
        <div class="col-1-2">&nbsp;</div>
            <div class="col-1-2"  id="fondomenu">
                <ul>
                    <!--Verifica que exista usuario logueado, imprime su atributo "Nombre" si verdadero, o "Usuario anonimo si falso.-->
                    <%@page import="beans.Usuario"%>
                    <li><%=(session.getAttribute("usuario")!=null ? ((Usuario)session.getAttribute("usuario")).getNombre():"Usuario Anonimo")%></li>
                    <li><a href="Perfil">Mi cuenta</a></li>
                    <li><a href="nosotros.jsp">Nosotros</a></li>
                    <br>
                </ul>
            </div>
        </div>
    </div>
</header>