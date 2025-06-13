package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

// This class can be used to initialize the database connection
public class DatabaseConnection {
    public static Connection con;
    public static Connection initializeDatabase() {
        try{
        if(con==null) {
            // Initialize all the information regarding
            // Database Connection
           //
            String dbDriver = "com.mysql.jdbc.Driver";
            String dbURL = "jdbc:mysql:// localhost:3306/";
            // Database name to access
            String dbName = "manage";
            String dbUsername = "root";
            String dbPassword = "root";
            System.out.println("database connection");
            Class.forName(dbDriver);
            con = DriverManager.getConnection(dbURL + dbName,
                    dbUsername,
                   dbPassword);

        }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}
//com.mysql.cj.jdbc.ConnectionImpl@156a01a4