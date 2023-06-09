/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mod;
//not gonna use this
/**
 *
 * @author Alion Leo
 */
public class assign_course {
    private int course_id;
    private int teacher_id;
    public assign_course()
    {
        this.course_id = course_id;
        this.teacher_id = teacher_id;
    }
    public assign_course(int course_id, int teacher_id)
    {
        this.course_id=course_id;
        this.teacher_id = teacher_id;
    }
    public int getCourse_id() {
        return course_id;
    }
    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }
    public int getTeacher_id(){
        return this.teacher_id;
    }
    public void setTeacher_id(int teacher_id)
    {
        this.teacher_id = teacher_id;
    }
    
}
