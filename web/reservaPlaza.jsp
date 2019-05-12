<%-- 
    Document   : reservaPlaza
    Created on : 06-may-2019, 11:19:30
    Author     : informatica
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Vehiculo"%>
<%@page import="beans.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="head.html" %>
<body>
<%@include file="header.jsp" %>

<!--CONTENIDO-->
<div class="col-1 box">
    <h1>Reserve su plaza</h1><br>
    <form action="OcuparPlaza" method="POST">
        <p>Ha seleccionada la plaza número: <%=session.getAttribute("numeroPlaza")%></p><br>
        <%
        ArrayList<Vehiculo> vehiculos = (ArrayList<Vehiculo>) session.getAttribute("vehiculos");
        if(vehiculos != null){         
        %>  
        <select name="vehiculoSeleccionado" required>
            <option value="" selected disabled hidden>Seleccione su vehículo</option>
            <%
            for(int i=0;i<vehiculos.size();i++){
                Vehiculo v = (Vehiculo)vehiculos.get(i);            
            %>  
            <option value="<%=v.getMatricula()%>"><%=v.getMatricula()%></option>
            <%}%>
         </select><br><br>
        <%}%>
        <input type="submit" value="Reservar">
    </form><br><br>
    <button onclick="location.href='mapa.jsp'">Volver</button><br><br>
</div>

<%@include file="footer.html" %>
</body>
</html>
