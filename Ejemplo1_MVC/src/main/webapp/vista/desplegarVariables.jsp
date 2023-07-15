
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Despliegue de Variables</title>
    </head>
    <body>
        <h1>Despliegue de Variables</h1>
        Variable en alcance de Request: ${mensaje}
        <br>
        <br>
        Variable en alcance de sesión:
        <br>
        Base: ${rectangulo.base}
        <br>
        Altura: ${rectangulo.altura}
        <br>
        Área: ${rectangulo.area}
        <br>
        <br>
        <a href="${pageContext.request.contextPath}/index.jsp">Regresar al inicio</a>
    </body>
</html>
