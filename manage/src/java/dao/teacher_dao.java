package dao;

import mod.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class teacher_dao {
    private Connection con;
    public teacher_dao(Connection con)
    {
        if(con== null) System.out.println("con null");
        this.con=con;
        System.out.println("db connectt");
    }


   public boolean save_data(teacher Teacher)
    {
        boolean flag = false;
        try{
            String sql = "INSERT INTO teacher (teacher_name, teacher_email, teacher_password) VALUES (?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(sql);
            pst.setString(1,Teacher.getName());
            pst.setString(2,Teacher.getEmail());
            pst.setString(3,Teacher.getPassword());

            pst.executeUpdate();
            flag = true;
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return flag;

    }
   
   public teacher getTeacher(String email, String password){
        
       teacher Teacher = null;
        try{
            
            String sql = "select * from teacher where teacher_email = ? and teacher_password = ?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, email);
            pst.setString(2,password);
            
            ResultSet st =pst.executeQuery();
            
            if(st.next()){
                
                Teacher = new teacher();
                
                String name = st.getString("teacher_name");
                Teacher.setName(name);
                Teacher.setId(st.getInt("teacher_id"));
                Teacher.setEmail(st.getString("teacher_email"));
                Teacher.setPassword(st.getString("teacher_password"));
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return Teacher;
    }
}
