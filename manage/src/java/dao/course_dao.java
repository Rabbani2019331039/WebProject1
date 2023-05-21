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
public class course_dao {
    private Connection con;
    public course_dao(Connection con)
    {
        this.con=con;
    }
    public boolean save_data(course Course)
    {
        boolean flag = false;
        try{
            String sql = "INSERT INTO CourseData (courseName, courseInfo,course_code) VALUES (?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(sql);
            pst.setString(1,Course.getCourse_name());
            pst.setString(2,Course.getCourse_info());
            pst.setString(3,Course.getCourse_code());
           

            pst.executeUpdate();
            flag = true;
            
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return flag;

    }
    
}
