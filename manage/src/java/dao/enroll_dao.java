/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import mod.*;

/**
 *
 * @author Alion Leo
 */
public class enroll_dao {
    private Connection con;
    public enroll_dao(Connection con)
    {
        this.con=con;
    }
    public boolean save_data(enrollment enroll)
    {
        boolean flag = false;
        try{
            String sql = "INSERT INTO enrollment (courseId,student_id) VALUES (?,?)";
            PreparedStatement pst = this.con.prepareStatement(sql);
            pst.setInt(1,enroll.getCourse_id());
            pst.setInt(2,enroll.getStudent_id());
            

            pst.executeUpdate();
            flag = true;
            
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return flag;

    }
    
}
