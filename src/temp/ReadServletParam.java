package temp;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ReadServletParam", urlPatterns = "/ReadServletParam")
public class ReadServletParam extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /*
            Reading servlet parameters from web.xml
            Write information about servlet parameters in web.xml
            Use getServletContext() helper class to read and parse the information in web.xml
            Use getInitParameters to read its values
         */

        ServletContext context = getServletContext();
        String maxSize = context.getInitParameter("max-size");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><body>");
        out.println("<p>");
        out.println("The value of parameter "+context.getInitParameterNames()+" "+maxSize);
        out.println("</p>");
        out.println("</body></html>");


    }
}
