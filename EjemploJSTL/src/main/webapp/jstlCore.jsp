
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Core</title>
    </head>
    <body>
        <h1>JSTL Core (JSP Standard Tag Library)</h1>
        <!-- Manipulacion de variables -->
        <c:set var="nombre" value="Ernesto" />
        Variable Nombre: <c:out value="${nombre}" />
        <br>
        <br>
        Variable con c�digo HTML:
        <c:out value="<h4>hola</h4>" escapeXml="false" />
        <br>
        <br>
        <!-- Uso de if -->
        <c:set var="bandera" value="true" />
        <c:if test="${bandera}">
            La bandera es verdadera
        </c:if>
        <br>
        <c:if test="${param.opcion != null}">
            <c:choose>
                <c:when test="${param.opcion == 1}">
                    <br>
                    Opcion 1 seleccionada
                </c:when>
                <c:when test="${param.opcion == 2}">
                    <br>
                    Opcion 2 seleccionada
                </c:when>
                <c:otherwise>
                    <br>
                    Opcion proporcionada desconocida: ${param.opcion}
                </c:otherwise>
            </c:choose>
        </c:if>
           
        <!-- Iterando un arreglo -->
        <% 
            String[] nombres = {"Claudia", "Pedro", "Juana"};
            request.setAttribute("nombres", nombres);
        %>
        <br>
        <br>
        Lista de nombres:
        <ul>
            <c:forEach var="persona" items="${nombres}">
                <li>Nombre: ${persona}</li>
            </c:forEach>
        </ul>

    </body>
</html>
