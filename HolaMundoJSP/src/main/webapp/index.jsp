<%-- 
    Document   : index
    Created on : 1/07/2023, 03:48:07 PM
    Author     : Escritorio_HP_2021
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
        <title>Hola Mundo JSPs</title>
    </head>
    <body>
        <h1>Hola Mundo JSPs</h1>
        <ul>
            <li><% out.print("Hola Mundo con Scriplets"); %></li>
            <li>${"Hola Mundo con Expression Language (EL)"}</li>
            <li><%= "Hola Mundo con Expresiones" %></li>
            <li> <c:out value="Hola Mundo con JSTL" /> </li>
        </ul>

    </body>
</html>
