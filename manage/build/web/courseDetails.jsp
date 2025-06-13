<%-- 
    Document   : courseDetails
    Created on : May 21, 2023, 2:05:18 AM
    Author     : Alion Leo
--%>
<%@page import ="servlet.*" %>
<%@page import ="mod.*" %>
<%@page import ="dao.*" %>
<%@page import ="java.sql.*" %>
<%@page import="java.io.IOException" %>

<%@page errorPage="errorpage.jsp" %>
<%
    teacher Teacher = (teacher) session.getAttribute("currentUser");
    if (Teacher == null) {
        response.sendRedirect("login.jsp");
    }
%>
<%
       Connection con = DatabaseConnection.initializeDatabase();
       Statement st=null;
       ResultSet rs=null;
       
       PreparedStatement rst =null;
       PreparedStatement pst =null;
       ResultSet ps = null;
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>CourseFul</title>

   <!-- google fonts -->
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link
      href="https://fonts.googleapis.com/css2?family=Gugi&family=MuseoModerno:wght@300;400;500;600;700;800;900&display=swap"
      rel="stylesheet">
   
   <!-- boxicon link -->
   <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
   <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>

   <!-- css links -->
   <link href="css/style.css" rel="stylesheet" type="text/css"/>
   <style><%@include file="/css/style.css"%></style>
   
   <!-- script -->
   
   <script src="js/script.js" type="text/javascript"></script>
   <script><%@include file="/js/script.js" %> </script>
   
</head>

<body class="admin-page">
   <header class="navbar">
      <div class="logo-container">
         <a href="#" class="logo">CourseFul</a>
      </div>
      <div class="nav-menu">
         <ul class="nav-menu-list">
            <li><a href="#" class="link">Home</a></li>
            <li><a href="myCourses.html" class="link">My Course</a></li>
            <li><a href="#" class="link">Contact Us</a></li>
         </ul>
      </div>
      <div class="nav-button">
         <button type="button" class="nav-btn nav-btn-login">Log Out</button>
         <button type="button" class="nav-btn nav-btn-login">Hi Teacher</button>
      </div>


   </header>
   <main>
      <div class="main-container">
         <div class="optionBar glass-morphism">
            <div class="list-heading">
               <div class="list-heading-heading">Option</div>
            </div>
            <div class="list-content">
               <div class="list-item course-name">
                  <p>Course Name</p>
               </div>
            </div>
         </div>

         <div class="listView glass-morphism">
            <div class="list-heading">
               <div class="heading-id">ID</div>
               <div class="heading-name">Student Name</div>
               <div class="heading-email">Email</div>

            </div>
            <%!
                int course_id;
                int st_id;
                String name;
                String email;
                
                %>
                <%
                    try{
                        course_id = (Integer) session.getAttribute("course_id");
                        String sql = "SELECT * FROM enrollment WHERE course_id = ?";
                        pst = con.prepareStatement(sql);
                        pst.setInt(1,course_id);
                        
                        ps = pst.executeQuery();
                        
                        if(ps.next())
                        {   
                        st_id=Integer.parseInt(ps.getString(1));
                        String qry = "SELECT * from student WHERE student_id= ?";
                        rst =con.prepareStatement(qry);
                        rst.setInt(1, st_id);
                        rs = rst.executeQuery();
                        while(rs.next()){
                        
                        name = rs.getString(2);
                        email = rs.getString(3);
                    %>
                    
             <div class="list-content">
            <div class="list-item">
               <div class="heading-id"><%=st_id%></div>
               <div class="heading-name"><%=name%></div>
               <div class="heading-email"><%=email%></div>
            </div>
             </div>
             <%
                    
                   }
                        
                    }
                       
                    }catch(Exception e){
                    e.printStackTrace();
                    }
                    
                    %>
                
            
         </div>

         </div>
     
      

   </main>

   <footer>
      <p>Copyright &copy; SUST CSE- 39 & 85 </p>
   </footer>


</body>

</html>