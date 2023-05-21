<%-- 
    Document   : courseEnroll
    Created on : May 20, 2023, 7:27:31 PM
    Author     : Alion Leo
checked
--%>
<%@page import ="servlet.*" %>
<%@page import ="mod.*" %>
<%@page import ="dao.*" %>
<%@page import ="java.sql.*" %>
<%@page import="java.io.IOException" %>

<%@page errorPage="errorpage.jsp" %>
<%
    admin Admin = (admin) session.getAttribute("currentUser");
    if (Admin == null) {
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

<body class="admin-page">
   <header class="navbar">
      <div class="logo-container">
         <a href="#" class="logo">CourseFul</a>
      </div>
      <div class="nav-menu">
         <ul class="nav-menu-list">
           <li><a href="#" class="link">Home</a></li>
            <li><a href="students.jsp" class="link">Students</a></li>
            <li><a href="teachers.jsp" class="link">Teachers</a></li>
            <li><a href="courseList.jsp" class="link">Courses</a></li>
            <li><a href="courseEnroll.jsp" class="link">Course Enroll</a></li>
            <li><a href="#" class="link">Contact Us</a></li>
         </ul>
      </div>
      <div class="nav-button">
         <!--button type="button" class="nav-btn nav-btn-login">Log Out</button>
         <button type="button" class="nav-btn nav-btn-login">Hi Admin</button-->
         <a class="nav-btn nav-btn-login" href="logout"> Hi Admin</a>
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
                  
                  <p> <a href="courseList.jsp" class="option-link">Course List</a></p>

               </div>
               <div class="list-item">
                   
                   <p> <a href="courseEnroll.jsp" class="option-link">Enroll Course</a></p>

               </div>
               <div class="list-item">
                  <p> <a href="addCourse.jsp" class="option-link">Add New Course</a></p>

               </div>
            </div>
         </div>

         <div class="listView glass-morphism">
            <div class="list-heading">
               <div class="heading-id dark-color">Assign Course Teacher</div>
            </div>
            <div class="list-content">
               <div class="new-course-form">
                 <form action="/manage/courseAssign" method="POST">
                     
                     <div class="input-box">
                        <input type="text" required  name="teach_id">
                        <label for="">Teacher Id</label>
                     </div>
                     <div class="input-box">
                        <input type="text" required name="name">
                        <label for="">Course Name</label>
                     </div>
                     <div class="input-box">
                        <input type="text" required  name="course_id">
                        <label for="">Course Id</label>
                     </div>
                     <button type="submit" class="add-course-button">Assign Teacher</button>
                  </form>
               </div>
            </div>
         </div>
      </div>

   </main>

   <footer>
      <p>Copyright &copy; SUST CSE- 39 & 85 </p>
   </footer>


</body>

</html>
