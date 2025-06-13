package dao;
import mod.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class student_dao {
    private Connection con;
    public student_dao(Connection con)
    {
        this.con=con;
    }
    public boolean save_data(student Student)
    {
        boolean flag = false;
        try{
            String sql = "INSERT INTO student (student_name, student_email, student_password) VALUES (?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(sql);
            pst.setString(1,Student.getName());
            pst.setString(2,Student.getEmail());
            pst.setString(3,Student.getPassword());

            pst.executeUpdate();
            flag = true;
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return flag;

    }
    
    public student getStudent(String email, String password){
        student Student = null;
        
        try{
            
            String sql = "select * from student where student_email = ? and student_password = ?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, email);
            pst.setString(2,password);
            
            ResultSet st =pst.executeQuery();
            
            if(st.next()){
                Student = new student();
                
                String name = st.getString("student_name");
                Student.setName(name);
                Student.setId(st.getInt("student_id"));
                Student.setEmail(st.getString("student_email"));
                Student.setPassword(st.getString("student_password"));
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return Student;
    }
}
