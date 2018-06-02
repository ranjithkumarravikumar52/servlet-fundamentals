package temp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "helloworld", urlPatterns = {"/helloworld"})
public class HttpServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        out.println("<html><body>");

        out.println("<p>");
        out.println("User entered:<br/> ");
        out.println("FirstName: " + firstName + "<br/>");
        out.println("LastName: " + lastName + "<br/>");
        out.println("</p>");

        out.println("</body></html>");
    }
}
