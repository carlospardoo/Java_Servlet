
package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GeneracionExcelServlet")
public class GeneracionExcelServlet extends HttpServlet{
    
    @Override
    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws IOException{
        
        //Se indica tipo de respuesta al anvegador
        response.setContentType("application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment;filename=excelEjemplo.xls");
        
        //Indicar al navegador que no guarde cache
        response.setHeader("pragma", "no-cache"); 
        response.setHeader("Cache Control", "no store");
        response.setDateHeader("Expires", -1);
        
        //Desplegar información al cliente
        PrintWriter out = response.getWriter();
        out.println("\tValores");
        out.println("\t1");
        out.println("\t2");
        out.print("Total\t=SUMA(B2:B3)");
        out.close();
        
    }
    
}
