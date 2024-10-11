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

                Employee employee = new Employee(id, name, gender, dob);
                employees.add(employee);
            }

            return employees;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void insert(Employee x) {
        String xSql = "insert into Employee (id,name,dob,gender) values (?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(xSql);
            ps.setInt(1, x.getId());
            ps.setString(2, x.getName());
            ps.setDate(3, (Date) x.getDob());
            ps.setBoolean(4, x.getGender());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete() {
        String sql = "DELETE FROM Employee";
        try {
            PreparedStatement connect = connection.prepareCall(sql);
            connect.executeQuery();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

}
