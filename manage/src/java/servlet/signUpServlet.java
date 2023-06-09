/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;


import alt.*;
import java.io.PrintWriter;
import dao.student_dao;
import dao.teacher_dao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mod.student;
import mod.teacher;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Alion Leo
 */
@WebServlet(name ="signUpServlet", value = "/signup")
@MultipartConfig
public class signUpServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet signUpServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet signUpServlet at " + request.getContextPath() + "</h1>");
            // data fetch*/
            String check = request.getParameter("user_password_c");
                String password = request.getParameter("user_password");
            Connection con = DatabaseConnection.initializeDatabase();
            out.println(con);
            out.println(password);
            
           if(!check.equals(password))
           {
               out.println("nox not checked");
           }
            else
            {
                //out.println("checked");
                
                String name = request.getParameter("user_name");
                String email = request.getParameter("user_email");
                String user_typ = request.getParameter("user_typ");
                //out.println(name);
                //out.println(email);
                //out.println(user_typ);
                 
                try{
                      if(user_typ.equalsIgnoreCase("teacher")){
                          
                          //out.println("teachr  cls");
                          
                          teacher Teacher = new teacher(email,password,name);
                          
                          //out.println(Teacher.getEmail() + "bhdh");
                         
                          /*
                          PreparedStatement pst = con.prepareStatement("INSERT INTO teacher ( teacher_name, teacher_email, teacher_password) VALUES(?,?,?)");
                           pst.setString(1, name);
                           pst.setString(2, email);
                           pst.setString(3, password);
                           pst.executeUpdate();
                          */
                         teacher_dao teacherDao = new teacher_dao(con);
                         boolean f = teacherDao.save_data(Teacher);
                         if(f== true){
                             out.println("done");
                             response.sendRedirect("login.jsp");
                         }
                         
                          
                      }
                      else {
                          
                          //out.println("student cls");
                         
                          student Student = new student(email,password, name);
                          
                          //out.println(Student.getEmail()+"  sssss");
                          
                          /*
                           PreparedStatement pst = con.prepareStatement("INSERT INTO student ( student_name, student_email, student_password) VALUES(?,?,?)");
                           pst.setString(1, name);
                           pst.setString(2, email);
                           pst.setString(3, password);
                           pst.executeUpdate();
                          */
                         student_dao studentDao = new student_dao(con);
                         boolean f = studentDao.save_data(Student);
                         if(f== true)
                             out.println("done");
                             response.sendRedirect("login.jsp");
                      }
                    
                }catch(Exception e){
                    e.printStackTrace();
                }
               
               }
               
           
           /* 
            out.println("</body>");
            out.println("</html>");
           */
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
