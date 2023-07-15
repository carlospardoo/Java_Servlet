
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alcance Variables</title>
    </head>
    <body>
        <h1>Alcance Variables</h1>
        <br>
        Variable request:
        Base: ${rectanguloRequest.base}
        Altura: ${rectanguloRequest.altura}
        Área: ${rectanguloRequest.area}
        <br><br>
        Variable sesión:
        Base: ${rectanguloSesion.base}
        Altura: ${rectanguloSesion.altura}
        Área: ${rectanguloSesion.area}
        <br><br>
        Variable aplicación:
        Base: ${rectanguloAplicacion.base}
        Altura: ${rectanguloAplicacion.altura}
        Área: ${rectanguloAplicacion.area}
        <br><br>
        <a href="${pageContext.request.contextPath}/index.jsp">Regresar al Inicio</a>
    </body>
</html>
