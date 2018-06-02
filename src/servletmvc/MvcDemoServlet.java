package servletmvc;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MvcDemoServlet", urlPatterns = {"/MvcDemoServlet"})
public class MvcDemoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Add data
        String students[] = {"ranjith", "ravi"};
        request.setAttribute("studentsList", students);

        //call to the jsp page
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");

        //forward the request to the jsp
        dispatcher.forward(request,response);


    }
}
