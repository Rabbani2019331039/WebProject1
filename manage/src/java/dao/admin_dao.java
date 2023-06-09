package dao;

import mod.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;

public class admin_dao {
    private Connection con;
    public admin_dao(Connection con)
    {
        this.con=con;
    }
    public boolean save_data(admin Admin)
    {
        boolean flag = false;
        try{
            String sql = "INSERT INTO student (name, email, password) VALUES (?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(sql);
            pst.setString(1,Admin.getName());
            pst.setString(2,Admin.getEmail());
            pst.setString(3,Admin.getPassword());

            pst.executeUpdate();
            flag = true;
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return flag;

    }
    
    public admin getAdmin(String email, String password){
        admin Admin = null;
        
        try{
            
            String sql = "select * from admin where email = ? and password = ?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, email);
            pst.setString(2,password);
            
            ResultSet st =pst.executeQuery();
            
            if(st.next()){
                Admin = new admin();
                
                String name = st.getString("name");
                Admin.setName(name);
                Admin.setId(st.getInt("admin_id"));
                Admin.setEmail(st.getString("email"));
                Admin.setPassword(st.getString("password"));
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return Admin;
    }
}
