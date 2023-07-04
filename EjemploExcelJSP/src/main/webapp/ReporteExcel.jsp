
<%@page errorPage="WEB-INF/ManejoErrores.jsp" %>
<%@page import="utils.Conversiones, java.util.Date" %>
<%@page contentType="application/vnd.ms-excel" %>
<% 
    String nombreArchivo = "reporte.xls";
    response.setHeader("Content-Disposition", "inline;filename=" + nombreArchivo);
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Reporte de Excel</title>
    </head>
    <body>
        <h1>Reporte de Excel</h1>
        <table border="1">
            <tr>
                <th>Curso</th>
                <th>Descripción</th>
                <th>Fecha</th>
            </tr>
            <tr>
                <th>1. Fundamentos de Java</th>
                <th>Aprenderemos la sintaxis básica de Java</th>
                <th><%= Conversiones.format(new Date()) %></th>
<!--                <th><%= Conversiones.format("500") %></th>-->
            </tr>
            <tr>
                <th>2. Programación con Java</th>
                <th>Pondremos en práctica conceptos de la programación orientada a objetos</th>
                <th><%= Conversiones.format(new Date()) %></th>
            </tr>
        </table>
    </body>
</html>
