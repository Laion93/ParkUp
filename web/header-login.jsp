<%@page import="beans.Usuario"%>
<!--MOBILE-->

<header class="col-1 mobile">
    <div class="col-1-3 mobile-user"><a href="informacion.jsp"><i class="fas fa-question fa-2x"></i></a></div>
        <div class="col-1-3"><a href="login.jsp"><img src="images/logo-provisional.png"></div></a>
        <div class="col-1-3 mobile-menu" id="desplegable"><i class="fas fa-bars fa-2x"></i></div>
</header>

<div class="col-1-2 desplegable mobile-nav">
        <!--<div class="col-1-2">&nbsp;</div>-->
        <div class="col-1"  id="fondomenu">
            <ul>
                <!--Verifica que exista usuario logueado, imprime su atributo "Nombre" si verdadero, o "Usuario anonimo si falso.-->
                <li><%=(session.getAttribute("usuario")!=null ? ((Usuario)session.getAttribute("usuario")).getNombre():"<a href='login.jsp'>Iniciar sesi&oacute;n</a>")%></li>
                <li><a href="nosotros.jsp">Nosotros</a></li>
                <li><a href="informacion.jsp">Informaci&oacute;n</a></li>
                    <li><a href="contacto.jsp">Contacto</a></li>
                <%if(session.getAttribute("usuario")!=null){Usuario user = (Usuario)session.getAttribute("usuario");%>
                    <%if(user.getPerfil().equals("administrador")){%>
                        <li><a href="RecuperarUsuariosAdmin">Usuarios</a></li>
                   <%}%>
                <%}%>      
                <br>
            </ul>
        </div>
</div>


<!--DESKTOP-->
<header>
        <nav class="col-1 desktop">
            <div class="col-1-4 logo"><a href="login.jsp"><img src="images/logo-provisional.png"></a></div>
                <div class="col-1-4 menu"><a href="informacion.jsp">Informaci&oacuten</a></div>
                <div class="col-1-4 menu"><a href="nosotros.jsp">Nosotros</a></div>
                <div class="col-1-4 menu"><a href="contacto.jsp">Contacto</a></div>
        </nav>	
</header>
