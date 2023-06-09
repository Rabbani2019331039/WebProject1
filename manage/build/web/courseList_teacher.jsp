<%-- 
    Document   : courseList_teacher
    Created on : May 20, 2023, 10:08:42 PM
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

<body>
   <header class="navbar">
      <div class="logo-container">
         <a href="#" class="logo">CourseFul</a>
      </div>
      <div class="nav-menu">
         <ul class="nav-menu-list">
            <li><a href="courseList_teacher.jsp" class="link">Home</a></li>
            <li><a href="#" class="link">Course List</a></li>
            <!-- <li><a href="#" class="link">Contact Us</a></li> -->
         </ul>
      </div>
      <div class="nav-button">
         <!--button type="button" class="nav-btn nav-btn-login">Hi Teacher</button>
         <button type="button" class="nav-btn nav-btn-login">Log Out</button-->
         <a class="nav-btn nav-btn-login" href="#"> Hi Teacher</a>
         <a class="nav-btn nav-btn-login" href="logout"> Logout</a>
      </div>


   </header>
   <main>
      <div class="main-container">
         <div class="optionBar glass-morphism">
            <div class="list-heading">
               <div class="list-heading-heading">Option</div>
            </div>
            <div class="list-content">
               <div class="list-item">
                  <p>Course List</p>

               </div>
               <div class="list-item">
                  <p>Enroll Course</p>

               </div>
               <div class="list-item">
                  <p>Add New Course</p>

               </div>
            </div>
         </div>
         <div class="listView glass-morphism">
            <div class="list-heading">
               <div class="list-heading">
                  <div class="heading-id">Course Id</div>
                  <div class="heading-id">Course Code</div>
                  <div class="heading-name">Course Name</div>
                  <div class="heading-email">Course Description</div>
                  <!--div class="heading-id">Teacher info</div-->
               </div>
            </div>
            <div class="list-content">
                <%!
                String id;
                String name;
                String info;
                int teach_id  ;
                String course_code;
                %>
             
              <%
            try{
                teach_id = Teacher.getId();
                String sql = "select courseId from  course_teacher where teacher_id= ?";
                
                
                //out.println(rs.getString(1));
                //out.println(rs.getString(2));
                //out.println(rs.getString(3));
                %>
               <div class="list-item">
                   <tr>
                   <div class="heading-id"><%=id%></td></div>
                   <div class="heading-id"><%=course_code%></div>
                  <div class="heading-name"><%=name%></div>
                  <div class="heading-email"><%=info%></div>
                  <div class="heading-id"><%=teach_id%></div>
                  </tr>
               </div>
                
                <%
           // }
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
