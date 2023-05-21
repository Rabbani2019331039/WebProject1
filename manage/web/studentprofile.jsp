<%-- 
    Document   : studentprofile
    Created on : May 18, 2023, 7:17:13 PM
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
       
       PreparedStatement pst =null;
       ResultSet ps = null;
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
            body{
                background:url(img/bg.jpeg);
                background-size: cover;
                background-attachment: fixed;
            }
        </style>
        
    </head>
    <body>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Large modal</button>

<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
        <form action="/manage/enroll" method="POST">
            
            <input type ="name" name="course_name" id="course_name">
            <input type ="number" name="course_id" id="course_id">
            
            <button type="submit" class="btn btn-primary">enroll</button>
        </form>
      ...
    </div>
  </div>
</div>

        <h1>Hello World!</h1>
        
        
        
        
        <!--javascripts-
<script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>

    </body>
</html>
-->
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
                  <p><a href="studentprofile.jsp" class="link">Course List</a></p>

               </div>

            </div>
         </div>
         <div class="listView glass-morphism">
            <div class="list-heading">
               <div class="heading-id">Course Code</div>
               <div class="heading-name">Course Name</div>
               <div class="heading-email">Course Teacher</div>
               <div class="heading-description">Description</div>
               <div class="heading-action">Action</div>

            </div>
            <div class="list-content">
                <%!
                    String code;
                    String name;
                    String teach;
                    String info;
                    int c_id;
                    int t_id;
                    
                %>
                <%
                    try{
                     st= con.createStatement();
                     String sql = "SELECT * FROM coursedata";
                    rs = st.executeQuery(sql);
                    while(rs.next()){
                    code=rs.getNString(4);
                    c_id = Integer.parseInt(rs.getString(1));
                    name= rs.getNString(2);
                    info = rs.getNString(3);
                    
         
                %>
                
               <div class="list-item">
                   <div class="heading-id"><%=code%></div>
                  <div class="heading-name"><%=name%></div>
                  <div class="heading-email"><%=teach%></div>
                  <div class="heading-description"><%=info%></div>
                  <div class="heading-action">
                      <form action="/manage/enroll" method="POST">
                          <% session.setAttribute("c_id",c_id); %>
      
                        <button type="submit" class="enroll-btn" >Enroll</button>
                     </form>
                  </div>

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
