
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
        �rea: ${rectanguloRequest.area}
        <br><br>
        Variable sesi�n:
        Base: ${rectanguloSesion.base}
        Altura: ${rectanguloSesion.altura}
        �rea: ${rectanguloSesion.area}
        <br><br>
        Variable aplicaci�n:
        Base: ${rectanguloAplicacion.base}
        Altura: ${rectanguloAplicacion.altura}
        �rea: ${rectanguloAplicacion.area}
        <br><br>
        <a href="${pageContext.request.contextPath}/index.jsp">Regresar al Inicio</a>
    </body>
</html>
