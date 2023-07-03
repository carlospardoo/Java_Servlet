# Java_Servlet

## JSP

Son compoentes del lado del servidor. Se transforman en un servlet.

### Directivas

1. <%  %> : **Scriplet**. Para incluir código Java. Se inserta en el metodo service del servlet.
2. <%!  %> : Para declarar variables. **Declaraciones**
3. <%--  --%> : Para comentarios
4. <%=  %> : Para imprimir igual que el out.print. **Expresiones**

### Variables implícitas

1. request: HttpServletRequest
2. response: HttpServletResponse
3. out: JspWriter (igual que PrintWriter)
4. session: HttpSession
4. application: ServletContext. Se obtiene del metdodo getServletContext() en un JSP normal.

### Atributos en las directivas de un JSP

#### Directiva page

1. **import:** Permite importar una o varias clases Java a un archivo JSP.
``` html

<%@ page import = "paquete.Clase1 , paquete.ClaseN" %>

```

2. **contentType:** Permite definir un tipo de respuesta que se enviará al cliente (MIME).
``` html

<%@ page contentType = "MIME-Type" %>

```

3. **session:** Permite definir si el jsp puede acceder a la sesión creada anteriormente.
``` html

<%@ page session = "true" %>

```

4. **isELIgnored:** Permite definir si el jsp puede utilizar un expresion language (EL). Pro defecto es true.
``` html

<%@ page isELIgnored = "false" %>

```

5. **buffer:** Permite definir el tamaño en kb que puede contener el buffer en el archivo jsp. Si se llena, se hace un vaciado (flush) del flujo colocado al PrintWriter o al output servlet.
``` html

<%@ page buffer = "tamañoEnKB" %>

```

6. **errorPage:** Define cual es el JSP encargado del manejo de errores.
``` html

<%@ page errorPage = "URL al JSP de error" %>

```

7. **isErrorPage:** Define si el JSP se encarga de manejar errores.
``` html

<%@ page isErrorPage = "true" %>

```

8. **isThreadSafe:** Especifica si el JSP es seguro para acceder a múltiples hilos. Por defecto es true.
``` html

<%@ page isThreadSafe = "true" %>

```

9. **extends:** Permite extender (heredar) de una clase.
``` html

<%@ page extends = "paquete.NombreClase" %>

```
