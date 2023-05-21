/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;
import mod.*;
import dao.*;

/**
 *
 * @author Alion Leo
 */
@WebServlet(name="enrollServlet", value="/enroll")
public class enrollServlet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet enrollServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet enrollServlet at " + request.getContextPath() + "</h1>");
            Connection con = DatabaseConnection.initializeDatabase();
            String course_name = request.getParameter("course_name");
            HttpSession s   = request.getSession();
           int course_id = (Integer) s.getAttribute("c_id");
            student Student =(student) s.getAttribute("currentUser");
            int student_id = Student.getId();
           // int course_id = Course.getCourse_id();
           try{
            enrollment enroll = new enrollment(course_id,student_id);
            enroll_dao enrollDao = new enroll_dao(con);
             boolean f = enrollDao.save_data(enroll);
                         if(f== true)
                         {
                             out.println("done");
                             response.sendRedirect("studentprofile.jsp");
                         }
           }catch(Exception e){
               e.printStackTrace();
           }
          
            
            out.println(con);
            out.println(course_name);
            out.println(course_id);
            out.println(student_id);
            out.println("</body>");
            out.println("</html>");
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
