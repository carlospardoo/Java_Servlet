
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EL y Variables Implicitas</title>
    </head>
    <body>
        <h1>EL y Variables Implicitas</h1>
        <br>
        <ul>
            <li>Nombre de la aplicaci�n: ${pageContext.request.contextPath}</li>
            <li>Navegador: ${header["User-Agent"]}</li>
            <li>Id de la Sesi�n: ${cookie.JSESSIONID.value}</li>
            <li>Web Server: ${pageContext.servletContext.serverInfo}</li>
            <li>Valor par�metro: ${param.usuario}</li>
        </ul>
        <br>
        <br>
        <a href="index.jsp">Regresar</a>
    </body>
</html>
