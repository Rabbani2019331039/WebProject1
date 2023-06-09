/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import mod.*;
import dao.*;
import java.sql.PreparedStatement;

/**
 *
 * @author Alion Leo
 */
@WebServlet(name="courseAssignServlet", value="/courseAssign")
public class courseAssignServlet extends HttpServlet {

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
            out.println("<title>Servlet courseAssignServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet courseAssignServlet at " + request.getContextPath() + "</h1>");
            
            Connection con = DatabaseConnection.initializeDatabase();
            out.println(con);
            String name = request.getParameter("name");
            String course_id = request.getParameter("course_id");
            String teach_id = request.getParameter("teach_id");
          
            try{
                
            assign_course course = new assign_course(Integer.parseInt(course_id),Integer.parseInt(teach_id));
            assignCourse_dao courseDao = new assignCourse_dao(con);
                         boolean f = courseDao.save_data(course);
                         if(f== true)
                         {
                             out.println("done");
                             response.sendRedirect("adminprofile.jsp");
                         }
                         
                
            }catch(Exception e){
                e.printStackTrace();
            }
           
            out.println(name);
            out.println(course_id);
            out.println(teach_id);
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
