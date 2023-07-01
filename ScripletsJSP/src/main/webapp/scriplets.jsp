
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP con Scriplets</title>
    </head>
    <body>
        <h1>JSP con Scriplets</h1>
        <br>
        <%-- Scriplet apra enviar informacion al navegador --%>
        <% out.print("Saludos desde un Scriplet"); %>
        <%-- Scriplet para manipular los objetos impl�citos --%>
        <% 
            String nombreAplicacion = request.getContextPath();
            out.print("Nombre de la Aplicaci�n: " + nombreAplicacion);
        %>
        <br>
        <%-- Scriplet con codigo condicionado --%>
        <%
            if(session != null && session.isNew()){
        %>
        La sesi�n SI es nueva
        <%
            } else if(session != null ){
        %>
        La sesi�n NO es nueva
        <% } %>
        <br>
        <a href="index.html">Regresar al inicio</a>
    </body>
</html>
