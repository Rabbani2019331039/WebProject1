/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import mod.*;
import dao.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Alion Leo
 */
@WebServlet(name ="loginServlet", value = "/login")
public class loginServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
           /*
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginServlet at " + request.getContextPath() + "</h1>");
            
            */
            Connection con = DatabaseConnection.initializeDatabase();
           // out.println(con);
            
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String user_typ = request.getParameter("user_typ");
           
            
            out.println(email);
            out.println(password);
            out.println(user_typ);
            
            if(user_typ.equalsIgnoreCase("admin")){
                
                out.println("admin table");
                
                admin_dao adminDao = new admin_dao(con);
                admin Admin =  adminDao.getAdmin(email, password);
                
                if(Admin == null){
                    out.println("NO USER FOUND- admin");
                    response.sendRedirect("login.jsp");
                }
                else{
                    out.println("USER AVAILABLE- admin");
                    HttpSession s = request.getSession();
                    s.setAttribute("currentUser", Admin);
                    response.sendRedirect("adminprofile.jsp");
                    
                }
                
            }
            else if(user_typ.equalsIgnoreCase("teacher")){
                out.println("teacher table");
                
                teacher_dao teacherDao = new teacher_dao(con);
                teacher Teacher = teacherDao.getTeacher(email, password);
                
                 if(Teacher == null){
                    out.println("NO USER FOUND- teacher");
                    response.sendRedirect("login.jsp");
                }
                else{
                    out.println("USER AVAILABLE- teacher");
                     HttpSession s = request.getSession();
                     s.setAttribute("currentUser", Teacher);
                     response.sendRedirect("teacherprofile.jsp");
                   
                }
                
            }
            else if(user_typ.equalsIgnoreCase("student")){
                out.println("student table");
                
                student_dao studentDao = new student_dao(con);
                student Student = studentDao.getStudent(email, password);
                
                 if(Student == null){
                    out.println("NO USER FOUND- stdnt");
                     response.sendRedirect("login.jsp");
                }
                else{
                    out.println("USER AVAILABLE- student");
                     HttpSession s = request.getSession();
                    s.setAttribute("currentUser", Student);
                    response.sendRedirect("studentprofile.jsp");
                   
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
