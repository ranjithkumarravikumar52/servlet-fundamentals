package servletmvc;

import com.jsppractice.data.Student;
import com.jsppractice.data.StudentList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MvcModelServlet", urlPatterns = {"/MvcModelServlet"})
public class MvcModelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //get the values from a model
        Student johnDoe = new Student("John", "Doe", "Hyderabad");
        Student maryJane = new Student("Mary", "Jane", "West virgina");
        Student josephStalin = new Student("Joseph", "Stalin", "Russia");
        Student tiffanyDoe = new Student("Tiffany", "Doe", "UK");

        //do so business logic on the model data
        StudentList studentList = new StudentList();
        studentList.addStudents(johnDoe);
        studentList.addStudents(maryJane);
        studentList.addStudents(josephStalin);
        studentList.addStudents(tiffanyDoe);

        //set the request attribute that you wanna access at the view page
        request.setAttribute("studentList", studentList.getStudentList());

        //create requestDispatcher to return the call to view page
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
        dispatcher.forward(request, response);

    }
}
