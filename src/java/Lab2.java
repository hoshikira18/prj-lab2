
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
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
@WebServlet(urlPatterns = {"/lab"})
public class Lab2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StudentDAO studentDAO = new StudentDAO();
        EmployeeDAO employeeDAO = new EmployeeDAO();
        Employee_SkillDAO employee_SkillDAO = new Employee_SkillDAO();

        List<Student> students = studentDAO.getAllStudent();
        List<Employee> employees = employeeDAO.getAllEmployee();
        List<Employee_Skill> employee_Skills = employee_SkillDAO.getAllEmployee_Skill();

        request.setAttribute("students", students);
        request.setAttribute("employees", employees);
        request.setAttribute("employee_Skills", employee_Skills);
        request.getRequestDispatcher("lab2.jsp").forward(request, response);
    }
    
}
