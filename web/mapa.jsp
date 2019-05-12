<%-- 
    Document   : mapa
    Created on : 03-may-2019, 16:59:06
    Author     : Manchita
--%>

<%@page import="beans.Usuario"%>
<%@page import="beans.Plaza"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%Usuario usuarioRecogido = (Usuario) session.getAttribute("usuario");%>

<!DOCTYPE html>
<html>
    <%@include file="head.html"%>
    <body>
        <%@include file="header.jsp"%>
	
	
<div class="col-1 box">
    <!--<div class="wrapper">-->
    
        <%
        ArrayList<Plaza> plazas = (ArrayList<Plaza>) session.getAttribute("plazas");
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
    
	
	
	
    <%@include file="footer.html"%>
    </body>
</html>
