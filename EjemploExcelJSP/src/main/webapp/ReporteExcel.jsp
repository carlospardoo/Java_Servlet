
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
                <th>Descripci�n</th>
                <th>Fecha</th>
            </tr>
            <tr>
                <th>1. Fundamentos de Java</th>
                <th>Aprenderemos la sintaxis b�sica de Java</th>
                <th><%= Conversiones.format(new Date()) %></th>
<!--                <th><%= Conversiones.format("500") %></th>-->
            </tr>
            <tr>
                <th>2. Programaci�n con Java</th>
                <th>Pondremos en pr�ctica conceptos de la programaci�n orientada a objetos</th>
                <th><%= Conversiones.format(new Date()) %></th>
            </tr>
        </table>
    </body>
</html>
