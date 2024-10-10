package models;

public class Employee_Skill {

    private int eid;
    private int sid;

    public Employee_Skill() {
    }

    public Employee_Skill(int eid, int sid) {
        this.eid = eid;
        this.sid = sid;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    @Override
    public String toString() {
        return "Employee_Skill{" + "eid=" + eid + ", sid=" + sid + '}';
    }

}
