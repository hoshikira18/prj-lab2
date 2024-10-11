
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import models.Employee;
import models.EmployeeDAO;
import models.Employee_Skill;
import models.Employee_SkillDAO;
import models.Student;
import models.StudentDAO;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author khuye
 */
@WebServlet(urlPatterns = {"/lab2"})
public class Lab2ServLet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        StudentDAO studentDAO = new StudentDAO();
        EmployeeDAO employeeDAO = new EmployeeDAO();
        Employee_SkillDAO employee_SkillDAO = new Employee_SkillDAO();

        List<Student> students = studentDAO.getAllStudent();
        List<Student> ss = new ArrayList<>();

        List<Employee> employees = employeeDAO.getAllEmployee();
        List<Employee_Skill> employee_Skills = employee_SkillDAO.getAllEmployee_Skill();

        String btn = request.getParameter("Button");
        String kw = request.getParameter("keyword");

        if (btn.equalsIgnoreCase("Search")) {
            for (Student s : students) {
                if (s.getName().contains(kw)) {
                    ss.add(s);
                }
            }
        } else if (btn.equalsIgnoreCase("A")) {
            employee_SkillDAO.delete();
            employeeDAO.delete();
        } else if (btn.equalsIgnoreCase("B")) {
            employeeDAO.insert(new Employee(7, "Hoa", true, java.sql.Date.valueOf("2000-02-22")));
            employee_SkillDAO.insert(7, 1);
            employee_SkillDAO.insert(7, 3);
            employee_SkillDAO.insert(7, 4);
        } else if (btn.equalsIgnoreCase("D")) {
            out.print("D");
        } else if (btn.equalsIgnoreCase("E")) {
            out.print("E");

        } else if (btn.equalsIgnoreCase("F")) {
            out.print("F");
        } else if (btn.equalsIgnoreCase("Insert")) {
            out.print("Insert");
        } else if (btn.equalsIgnoreCase("Calculate")) {
            out.print("Calculate");
        }

        request.setAttribute("students", ss);
        request.setAttribute("employees", employees);
        request.setAttribute("employee_Skills", employee_Skills);
        request.getRequestDispatcher("lab2.jsp").forward(request, response);
    }

}
