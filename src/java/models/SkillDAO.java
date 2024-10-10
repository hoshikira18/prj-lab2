package models;

import java.util.List;
import java.sql.*;
import java.util.ArrayList;

public class SkillDAO extends DBContext {

    public List<Skill> getAllSkill() {

        List<Skill> skills = new ArrayList<>();

        String sql = "SELECT * FROM Skill";

        try {
            PreparedStatement connect = connection.prepareCall(sql);
            ResultSet result = connect.executeQuery();
            while (result.next()) {
                int id = result.getInt("id");
                String name = result.getString("name");

                Skill skill = new Skill(id, name);
                skills.add(skill);
            }
            connect.close();
            result.close();
            return skills;
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }
}
