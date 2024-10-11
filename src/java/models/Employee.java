package models;

import java.util.Date;
import java.util.List;

public class Employee {

    private int id;
    private String name;
    private boolean gender;
    private Date Dob;
    private List<Skill> skills;

    public Employee() {
    }

    public Employee(int id, String name, boolean gender, Date Dob) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.Dob = Dob;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean getGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return Dob;
    }

    public void setDob(Date Dob) {
        this.Dob = Dob;
    }

    @Override
    public String toString() {
        return "Employee{" + "id=" + id + ", name=" + name + ", gender=" + gender + ", Dob=" + Dob + ", skills=" + '}';
    }

}
