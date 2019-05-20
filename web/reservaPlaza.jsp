<%-- 
    Document   : reservaPlaza
    Created on : 06-may-2019, 11:19:30
    Author     : informatica
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="beans.Plaza"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Vehiculo"%>
<%@page import="beans.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%String mensajeErrorVehiculoNoValido = (String) request.getAttribute("mensajeErrorVehiculoNoValido");%>
<%String mensajeErrorNoVehiculos = (String) request.getAttribute("mensajeErrorNoVehiculos");%>

<%@include file="head.html" %>

<body>
    <%@include file="header.jsp" %>

    <!--CONTENIDO-->
    <div class="col-1 box">
        <h1>Reserve su plaza</h1><br>

        <%if(mensajeErrorVehiculoNoValido != null){%>
               <center>
                <div class="errorPlaza">  
                    <h3><%=mensajeErrorVehiculoNoValido%></h3>
                </div><br>
                </center>
            <%}%>

        <form action="OcuparPlaza" method="POST">
            <%Plaza p = (Plaza) session.getAttribute("plazaSeleccionada");%>
            <p>Ha seleccionada la plaza: <%=p.getNombrePlaza()%></p><br>
            
            <%if(mensajeErrorNoVehiculos != null){%>
               <center>
                <div class="errorPlaza">  
                    <h3><%=mensajeErrorNoVehiculos%></h3>
                </div><br>
                </center>
            <%}else{%>
            
                <%ArrayList<Vehiculo> vehiculos = (ArrayList<Vehiculo>) session.getAttribute("vehiculos");%>

                <select name="vehiculoSeleccionado" required>
                    <option value="" selected disabled hidden>Seleccione su vehículo</option>
                    <%for(int i=0;i<vehiculos.size();i++){
                        Vehiculo v = (Vehiculo)vehiculos.get(i);  
                        if(v.getNombrePlaza() == null){%>
                            <option value="<%=v.getMatricula()%>"><%=v.getMatricula()%> <%=v.getTipoVehiculo()%> <%if(v.getTipoVehiculo().equals("coche") && v.isElectrico()==true){%>eléctrico<%}%></option>
                        <%}%>
                    <%}%>
                 </select><br><br>

                <input type="submit" value="Reservar">
             <%}%>
        </form><br><br>
        <button onclick="location.href='mapa.jsp'">Volver</button><br><br>
    </div>

    <%@include file="footerbottom.html" %>
</body>
</html>