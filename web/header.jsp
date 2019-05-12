<%@page import="beans.Usuario"%>
<!--MOBILE-->

<header class="col-1 mobile">
    <div class="col-1-3 mobile-user"><a href="informacion.jsp"><i class="fas fa-question fa-2x"></i></a></div>
        <a href="Plazas"><div class="col-1-3"><img src="img/logo-provisional.png"></div></a>
        <div class="col-1-3 mobile-menu" id="desplegable"><i class="fas fa-bars fa-2x"></i></div>
</header>

<div class="col-1-2 desplegable mobile-nav">
        <!--<div class="col-1-2">&nbsp;</div>-->
        <div class="col-1"  id="fondomenu">
            <ul>
                <!--Verifica que exista usuario logueado, imprime su atributo "Nombre" si verdadero, o "Usuario anonimo si falso.-->
                <li><%=(session.getAttribute("usuario")!=null ? ((Usuario)session.getAttribute("usuario")).getNombre():"<a href='login.jsp'>Iniciar sesi&oacute;n</a>")%></li>
                <li><a href="vehiculo_nuevo.jsp">Registrar veh&iacute;culo</a></li>
                <li><a href="Perfil">Mi cuenta</a></li>
                <li><a href="nosotros.jsp">Nosotros</a></li>
                <%Usuario user = (Usuario)session.getAttribute("usuario");%>
                    <%if(user.getPerfil().equals("administrador")){%>
                        <li><a href="RecuperarUsuariosAdmin">Usuarios</a></li>
                   <%}%>
                <li><a href="CerrarSession">Cerrar sesi&oacute;n</a></li>        
                <br>
            </ul>
        </div>
</div>


<!--DESKTOP-->
<header>
        <nav class="col-1 desktop">
            <div class="col-1-5 logo"><a href="Plazas"><img src="img/logo-provisional.png"></a></div>
                <div class="col-1-5 menu"><a href="promociones.jsp">Promociones</a></div>
                <div class="col-1-5 menu"><a href="informacion.jsp">Informaci&oacuten</a></div>
                <div class="col-1-5 menu"><a href="contacto.jsp">Contacto</a></div>
                <div class="col-1-5"><i class="fas fa-user fa-1x mobile-desktop"></i></div>
        </nav>	
</header>

<div class="col-1-2 desplegable-desktop visible">
        <!--<div class="col-1-2">&nbsp;</div>-->
        <div class="col-1"  id="fondomenu">
            <ul>
                <!--Verifica que exista usuario logueado, imprime su atributo "Nombre" si verdadero, o "Usuario anonimo si falso.-->
                
                <li><%=(session.getAttribute("usuario")!=null ? ((Usuario)session.getAttribute("usuario")).getNombre():"<a href='login.jsp'>Iniciar sesi&oacute;n</a>")%></li>
                <li><a href="vehiculo_nuevo.jsp">Registrar veh&iacute;culo</a></li>
                <li><a href="Perfil">Mi cuenta</a></li>
                <li><a href="nosotros.jsp">Nosotros</a></li>
                    <%if(user.getPerfil().equals("administrador")){%>
                        <li><a href="RecuperarUsuariosAdmin">Usuarios</a></li>
                   <%}%>
                <li><a href="CerrarSession">Cerrar sesi&oacute;n</a></li> 

            </ul>
         </div>
</div>

