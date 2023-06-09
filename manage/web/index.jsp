<%-- 
    Document   : index
    Created on : May 17, 2023, 8:25:48 PM
    Author     : Alion Leo
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
        .banner-background{
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
        }
    </style>
    
    </head>
    <body>

-->
      <!--%@include file="normal.jsp"%>

 <!--banner-->
 <!--
<div class="container-fluid p-0 m-0 ">
    <div class="jumbotron primary-background banner-background" >
        <div class="container">
        <h3 class="display-3">Hello</h3>
        <h3>Welcome to course manager</h3>
        <p>learn</p>
            <a href="/manage/signup.jsp" class="btn btn-primary primary-background">Sign up</a>
            <a href="/manage/login.jsp" class="btn btn-primary">Login</a>
        </div>
    </div>
</div>
 

<!--cards -->
<!--
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="/manage/login.jsp" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
    </div>
</div>

   
    
    <script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script> 
</body>
</html>

-->
<!-- rabbanir kaaj -->
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>CourseFul</title>
   <!--
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   -->
   
   <!-- google fonts -->
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link
      href="https://fonts.googleapis.com/css2?family=Gugi&family=MuseoModerno:wght@300;400;500;600;700;800;900&display=swap"
      rel="stylesheet">
   <!-- css links -->
   <link href="css/style.css" rel="stylesheet" type="text/css"/>
   <style><%@include file="/css/style.css"%></style>
   
   <!-- <script src="https://cdn.tailwindcss.com"></script> -->

   <!-- boxicon link -->
   <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
   <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>

   <!-- script -->
   
   
   <script src="js/script.js" type="text/javascript"></script>

</head>

<body>


   <header class="navbar">
      <div class="logo-container">
         <a href="index.jsp" class="logo">CourseFul</a>
      </div>
      <div class="nav-menu">
         <ul class="nav-menu-list">
            <li><a href="index.jsp" class="link">Home</a></li>
            <li><a href="#" class="link">Contact Us</a></li>
         </ul>
      </div>
      <div class="nav-button">
         <form action="">
            
            <a href="/manage/login.jsp" class="nav-btn nav-btn-login">Log In</a>
            <a href="/manage/signup.jsp" class="nav-btn nav-btn-login">Sign Up</a>
            
         </form>
      </div>


   </header>
   <main>
      <div class="motto">
         <p>The <span class="only">Only </span><br>Course Management system <br>YOU'll ever need</p>
      </div>

      <div class="adv">
         <!--p class="dark">Join Us</p>
         <p class="dark">RIGHT NOW!!</p><br><br>
         <p>and</p--><br>
         <p>Start Your</p>
         <p>Exciting journey</p>
      </div>

   </main>

   <footer>
      <p>Copyright &copy; SUST CSE- 39 & 85 </p>
   </footer>


</body>

</html>