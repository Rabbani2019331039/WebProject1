
<%-- 
    Document   : adminprofile
    Created on : May 18, 2023, 7:15:17 PM
    Author     : Alion Leo
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
       Statement pst=null;
       ResultSet rs=null;
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
   
   <!-- <script src="https://cdn.tailwindcss.com"></script> -->

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
            <li><a href="students.jsp" class="link">Students</a></li>
            <li><a href="teachers.jsp" class="link">Teachers</a></li>
            <li><a href="courseList.jsp" class="link">Courses</a></li>
            <li><a href="courseEnroll.jsp" class="link">Course Enroll</a></li>
            <li><a href="#" class="link">Contact Us</a></li>
         </ul>
      </div>
      <div class="nav-button">
         <!--button type="button" class="nav-btn nav-btn-login">Log Out</button-->
         <!--button type="button" class="nav-btn nav-btn-login">Hi Admin</button-->
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
               <div class="list-heading-heading">dasdasdasd</div>
            </div>
            <div class="list-content">
               <div class="list-item">
                  div.
               </div>
               <div class="list-item">
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui praesentium temporibus quos obcaecati
                     voluptate beatae quod atque, commodi sed laborum perspiciatis. Velit optio rerum alias facilis
                     libero ut natus voluptate.
                  </p>
               </div>
               
               <div class="list-item">
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum sint, nam dolorem, quos a aliquam
                     iste placeat aperiam sequi nobis ratione veniam cupiditate corrupti, quam facilis quia sed aut
                     provident.
                  </p>
               </div>
               <div class="list-item">
                  <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut cupiditate harum neque, iusto itaque
                     debitis repellat laudantium tempore quia provident. Non cum nisi provident, officiis ad tenetur
                     laboriosam atque voluptatibus.
                  </p>
               </div>
               <div class="list-item">
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum sint, nam dolorem, quos a aliquam
                     iste placeat aperiam sequi nobis ratione veniam cupiditate corrupti, quam facilis quia sed aut
                     provident.
                  </p>
               </div>
               <div class="list-item">
                  <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut cupiditate harum neque, iusto itaque
                     debitis repellat laudantium tempore quia provident. Non cum nisi provident, officiis ad tenetur
                     laboriosam atque voluptatibus.
                  </p>
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