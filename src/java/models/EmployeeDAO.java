package models;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO extends DBContext {

    public List<Employee> getAllEmployee() {
        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT * FROM Employee";
        try {
            PreparedStatement connect = connection.prepareCall(sql);
            ResultSet result = connect.executeQuery();
            while (result.next()) {
                int id = result.getInt("id");
                String name = result.getString("name");
                Date dob = result.getDate("dob");
                Boolean gender = result.getBoolean("gender");

                Employee employee = new Employee(id, name, gender, dob, null);
                employees.add(employee);
            }

            return employees;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

}
