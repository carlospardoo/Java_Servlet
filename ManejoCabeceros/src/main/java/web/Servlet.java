
package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletHeaders")
public class Servlet extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String metodoHTTP = request.getMethod();
        String uri = request.getRequestURI();
        
        out.print("<html>");
        out.print("<head>");
        out.print("<title>Headers HTTP </title>");
        out.print("</head>");
        out.print("<body>");
        out.print("<h1> Headers HTTP </h1>");
        out.print("Método HTTP: "+metodoHTTP);
        out.print("<br>");
        out.print("URI Solicitada: "+uri);
        out.print("<br>");
        
        Enumeration cabeceros = request.getHeaderNames();
        while(cabeceros.hasMoreElements()){
            String nombreCabecero = cabeceros.nextElement().toString();
            out.println("<b>" + nombreCabecero + "</b>");
            out.println(request.getHeader(nombreCabecero));
            out.print("<br>");
        }
        
        out.print("</body>");
        out.print("</html>");
        out.close();
        
    }
    
}
