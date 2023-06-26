
package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet{
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //Simula los valroes correctos
        String usuarioOk = "Carlos";
        String passwordOk = "123";
        PrintWriter out = response.getWriter();
        
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        
        if(usuario.equals(usuario) && passwordOk.equals(password)){
            out.print("<h1>Datos correctos");
            out.print("<br>Usuario: "+usuario);
            out.print("<br>Password: "+password);
            out.print("</h1>");
        }
        else{
            response.sendError(response.SC_UNAUTHORIZED, "Las credenciales son incorrectas");
        }
        out.close();
    }
}
