/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.List;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author hiepg
 */
public class StudentDAO extends DBContext {

    public List<Student> getAllStudent() {
        String sql = "SELECT * FROM Student";
        List<Student> students = new ArrayList<>();
        try {
            PreparedStatement connect = connection.prepareStatement(sql);
            ResultSet result = connect.executeQuery();
            while (result.next()) {
                String id = result.getString("id");
                String name = result.getString("name");
                Date dob = result.getDate("dob");
                boolean gender = result.getBoolean("gender");

                Student student = new Student(id, name, dob, gender);
                students.add(student);
            }
            connect.close();
            result.close();
            return students;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
