<%-- 
    Document   : coursList_student
    Created on : May 20, 2023, 9:58:41 PM
    Author     : Alion Leo
--%>
<%@page import ="servlet.*" %>
<%@page import ="mod.*" %>
<%@page import ="dao.*" %>
<%@page import ="java.sql.*" %>
<%@page import="java.io.IOException" %>

<%@page errorPage="errorpage.jsp" %>
<%
    student Student = (student) session.getAttribute("currentUser");
    if (Student == null) {
        response.sendRedirect("login.jsp");
    }
%>
<%
       Connection con = DatabaseConnection.initializeDatabase();
       Statement st=null;
       ResultSet rs=null;
       ResultSet ss=null;
       
       PreparedStatement pst =null;
       PreparedStatement rst =null;
       PreparedStatement sst =null;
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
   <!-- css links -->
   <link href="css/style.css" rel="stylesheet" type="text/css"/>
   <style><%@include file="/css/style.css"%></style>
   
   <!-- script -->
   
   <script src="js/script.js" type="text/javascript"></script>
   <script><%@include file="/js/script.js" %> </script>
  
   <!-- boxicon link -->
   <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
   <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>

   

</head>

<body class="admin-page">
   <header class="navbar">
      <div class="logo-container">
         <a href="#" class="logo">CourseFul</a>
      </div>
      <div class="nav-menu">
         <ul class="nav-menu-list">
            <li><a href="#" class="link">Home</a></li>
            <li><a href="studentprofile.jsp" class="link">Courses</a></li>
            <li><a href="coursList_student.jsp" class="link">My Course</a></li>
            <li><a href="#" class="link">Contact Us</a></li>

         </ul>
      </div>
      <div class="nav-button">
         <!--button type="button" class="nav-btn nav-btn-login">Log out</button>
         <button type="button" class="nav-btn nav-btn-login">Hi Student</button-->
         <a class="nav-btn nav-btn-login" href="logout"> Hi Student</a>
         <a class="nav-btn nav-btn-login" href="logout"> Logout</a>



   </header>
   <main>
      <div class="main-container">
         <div class="optionBar glass-morphism">
            <div class="list-heading">
               <div class="list-heading-heading">Option</div>
            </div>
            <div class="list-content">
               <div class="list-item">
                  <p><a href="coursList_student.jsp" class="link">Enrolled Course List</a></p>

               </div>

            </div>
         </div>
         <div class="listView glass-morphism">
            <div class="list-heading">
               <div class="heading-id">Course Code</div>
               <div class="heading-name">Course Name</div>
               <div class="heading-email">Course Teacher</div>
               <div class="heading-description">Description</div>

            </div>
            <div class="list-content">

                <%!
                int id;
                String name;
                String info;
                String teach_id;
                int course_id;
                String course_code;
                %>
             
              <%
            try{
                id = Student.getId();
               String sql = "SELECT  * from coursedata ";
               pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                while(rs.next()){
                course_id =Integer.parseInt( rs.getString(1));
                name = rs.getString(2);
                info = rs.getString(3);
                course_code = rs.getString(4);
                
                
                
                
               // String teach_id = ps.getString("teacher_id");
                
           // }
                //out.println(rs.getString(1));
                //out.println(rs.getString(2));
                //out.println(rs.getString(3));
                %>
               <div class="list-item">
                   
                   
                   <div class="heading-id"><%=course_code%></div>
                  <div class="heading-name"><%=name%></div>
                  <div class="heading-id"><%=teach_id%></div>
                  <div class="heading-email"><%=info%></div>
                  
               </div>
               
                
                <%
            }
            }catch(Exception e){
            e.printStackTrace();
            }
               %>
               
               

            </div>
         </div>
      </div>

   </main>

   <footer>
      <p>Copyright &copy; SUST CSE- 39 & 85 </p>
   </footer>


</body>

</html>