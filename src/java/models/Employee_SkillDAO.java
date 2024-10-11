package models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Employee_SkillDAO extends DBContext {

    public List<Employee_Skill> getAllEmployee_Skill() {
        List<Employee_Skill> employee_Skills = new ArrayList<>();
        String sql = "SELECT * FROM Employee_Skill";
        try {
            PreparedStatement connect = connection.prepareCall(sql);
            ResultSet result = connect.executeQuery();
            while (result.next()) {
                int eid = result.getInt("eid");
                int sid = result.getInt("sid");

                Employee_Skill employee_Skill = new Employee_Skill(eid, sid);
                employee_Skills.add(employee_Skill);
            }

            return employee_Skills;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void delete() {
        String sql = "DELETE FROM Employee_skill";
        try {
            PreparedStatement connect = connection.prepareCall(sql);
            connect.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insert(int xEid, int xSid) {
        String xSql = "insert into Employee_Skill (eid,sid) values (?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(xSql);
            ps.setInt(1, xEid);
            ps.setInt(2, xSid);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
