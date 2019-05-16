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
<%@include file="head.html" %>

<%
if (request.getParameter("error") != null){%>
        <script type="text/javascript">;
        //swal("¡Plaza cancelada!","Esperamos verte pronto.", {icon: "warning"});
        alert('El vehículo elegido no es compatible con la plaza seleccionada.\nSeleccione otro vehículo por favor.');
        </script>   
<%}%>

<body>
<%@include file="header.jsp" %>

<!--CONTENIDO-->
<div class="col-1 box">
    <h1>Reserve su plaza</h1><br>
    <form action="OcuparPlaza" method="POST">
        <%Plaza p = (Plaza) session.getAttribute("plazaSeleccionada");%>
        <p>Ha seleccionada la plaza: <%=p.getNombrePlaza()%></p><br>
        <%
        ArrayList<Vehiculo> vehiculos = (ArrayList<Vehiculo>) session.getAttribute("vehiculos");
        if(vehiculos != null){         
        %>  
        <select name="vehiculoSeleccionado" required>
            <option value="" selected disabled hidden>Seleccione su vehículo</option>
            <%
            for(int i=0;i<vehiculos.size();i++){
                Vehiculo v = (Vehiculo)vehiculos.get(i);  
                if(v.getNombrePlaza() == null){
            %>  
            <option value="<%=v.getMatricula()%>"><%=v.getMatricula()%></option>
                <%}%>
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