package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Rectangulo;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. Procesamos los parámetros
        String accion = request.getParameter("accion");

        //2. Creamos los Java Beans
        Rectangulo rectanguloRequest = new Rectangulo(1, 2);
        Rectangulo rectanguloSesion = new Rectangulo(3, 4);
        Rectangulo rectanguloAplicacion = new Rectangulo(5, 6);

        //3. Agregamos el Java Bean a algun alcance
        
        // Revisamos la accion proporcionada
        if("agregaVariables".equals(accion)){
            //Alcance request
            request.setAttribute("rectanguloRequest", rectanguloRequest);
            //Alcance session
            HttpSession sesion = request.getSession();
            sesion.setAttribute("rectanguloSesion", rectanguloSesion);
            //Alcance application
            ServletContext aplicacion = this.getServletContext();
            aplicacion.setAttribute("rectanguloAplicacion", rectanguloAplicacion);
            //Agregamos un mensaje
            request.setAttribute("mensaje", "Las variables fueron agregadas");
            //4. Redireccionamos al JSP de index
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        else if("listarVariables".equals(accion)){
            //4. Redireccionamos al JSP que despliega las variables
            request.getRequestDispatcher("WEB-INF/alcanceVariables.jsp").forward(request, response);
        }
        else{
            //4. Redireccionamos a la página de inicio
            request.setAttribute("mensaje", "Acción no proporcionada o desconocida");
            request.getRequestDispatcher("index.jsp").forward(request, response);
            
            //Esta linea no propagaria request y response, por lo que no enviaría información al JSP
            //response.sendRedirect("index.jsp");
        }
    }

}
