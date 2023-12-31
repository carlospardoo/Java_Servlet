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
``` jsp

<%@ page import = "paquete.Clase1 , paquete.ClaseN" %>

```

2. **contentType:** Permite definir un tipo de respuesta que se enviará al cliente (MIME).
``` jsp

<%@ page contentType = "MIME-Type" %>

```

3. **session:** Permite definir si el jsp puede acceder a la sesión creada anteriormente.
``` jsp

<%@ page session = "true" %>

```

4. **isELIgnored:** Permite definir si el jsp puede utilizar un expresion language (EL). Pro defecto es true.
``` jsp

<%@ page isELIgnored = "false" %>

```

5. **buffer:** Permite definir el tamaño en kb que puede contener el buffer en el archivo jsp. Si se llena, se hace un vaciado (flush) del flujo colocado al PrintWriter o al output servlet.
``` jsp

<%@ page buffer = "tamañoEnKB" %>

```

6. **errorPage:** Define cual es el JSP encargado del manejo de errores.
``` jsp

<%@ page errorPage = "URL al JSP de error" %>

```

7. **isErrorPage:** Define si el JSP se encarga de manejar errores.
``` jsp

<%@ page isErrorPage = "true" %>

```

8. **isThreadSafe:** Especifica si el JSP es seguro para acceder a múltiples hilos. Por defecto es true.
``` jsp

<%@ page isThreadSafe = "true" %>

```

9. **extends:** Permite extender (heredar) de una clase.
``` jsp

<%@ page extends = "paquete.NombreClase" %>

```

#### Inclusión de Archivos

1. **Inclusión Estática: (translation time)** 
``` jsp

<%@ include file="Page.jsp" %>

```

2. **Inclusión Dinámica: (request time)** Con la **acción** include.
``` jsp

<jsp:include page="Page.jsp" />

```

#### Java Beans

Existen 4 scopes: page, request, session, application

1. useBean: Define el Java Bean a utilizar. Se coloca el scope que tendra

´´´ jsp
<jsp:useBean id="rectangulo" class="beans.Rectangulo" scope="session"></jsp:useBean>
´´´

2. getProperty: Llama a un getter de un atributo de un bean

´´´ jsp
<jsp:getProperty name="rectangulo" property="base" />
´´´

3. setProperty: Setea un atributo de un bean

´´´ jsp
<jsp:setProperty name="rectangulo" property="base" value="<%=baseValor%>">
´´´

#### Expression Language

Simplifican el acceso a las propiedades de un Java Bean. Llaman al getter

´´´ jsp

${nombreBean.nombrePropiedad}
${nombreBean["nombrePropiedad"]}
<%-- beans anidados --%>
${alumno.direccion.calle} 
<%-- variables implicitas --%>
${pageContext.session.id} 
${param.nombre} <%-- parametros --%>
${header["user-agent"]} <%-- headers --%>
${cookie.nombreCookie.value} <%-- cookies --%>

´´´

Para definir un expression language se debe haber agregado el bean en un scope de un servlet con el metodo setAttribute()

#### JSTL (Java Standard Tag Library)

Extiende las funcionalidades de lso JSPs agregando las siguientes librerias:

- **Core:** Leer y manipular datos, iterar, condicionales.
- **xml:** Manipular documentos xml.
- **sql:** Ejecutar consultas a la base de datos y crear conexiones.
- **fmt:** Da formato a cadenas, con internacionalización (Locale).

Agregar librerias standar.jar y jstl.jar. Algunos servidores lo agregan por defecto.
´´´ jsp
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<html xmlns:c="http://java.sun.com/jstl/core">
´´´

##### Tags

1. **Despliegue de información: ** 
´´´ jsp
<c:out value="${persona.nombre}">
´´´

2. **Creacion y maipulacino de variables ** 
´´´ jsp
<c:set var="nombre" value="Carlos" scope="page >
´´´

3. **Elementos condicionales: ** 
´´´ jsp
<c:if test="${ i> 0}"> 
<c:when test="a">
´´´

4. **Iteración: **
´´´ jsp
<c:if test="${ i> 0}"> 
<c:forEach var="persona" items="${personas}">
´´´

5. **Importación de recurso web: **
´´´ jsp
<c:import url="recursoExterno">
´´´

6. **Redireccionamiento: **
´´´ jsp
<c:redirect url="${nuevaUrl}" />
´´´

7. **Manejo de parámetros: **
´´´ jsp
<c:import url="c-import-param,jsp" >
    <c:param name="nombre" value="${param.select}" />
</c:import>
´´´
