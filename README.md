# Java_Servlet

## JSP

Son compoentes del lado del servidor. Se transforman en un servlet.

### Directivas

1. <%  %> : Scriplet. Para incluir código Java. Se inserta en el metodo service del servlet.
2. <%!  %> : Para declarar variables. Declaraciones
3. <%--  --%> : Para comentarios
4. <%=  %> : Para imprimir igual que el out.print. Expresiones

### Variables implícitas

1. request: HttpServletRequest
2. response: HttpServletResponse
3. out: JspWriter (igual que PrintWriter)
4. session: HttpSession
4. application: ServletContext. Se obtiene del metdodo getServletContext() en un JSP normal.
