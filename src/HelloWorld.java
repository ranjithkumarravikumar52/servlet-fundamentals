import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorld")
public class HelloWorld extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //set the content type
        response.setContentType("text/HTML");

        //get the print writer
        PrintWriter out = response.getWriter();

        //generate HTML content
        out.println("<HTML><body>");
        out.println("Time on the new server: "+ new java.util.Date());
        out.print("</body></HTML>");


    }
}
