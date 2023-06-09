<%--
  Created by IntelliJ IDEA.
  User: Alion Leo
  Date: 16-May-23
  Time: 12:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Login</title>

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
   <script src="./js/script.js" defer></script>

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
            <a href="/manage/login.jsp" class="nav-btn nav-btn-login">LogIn</a>
            <a href="/manage/signup.jsp" class="nav-btn nav-btn-login">Sign Up</a>
            
         </form>
      </div>


   </header>
   <main class="login-page">
      <div class="motto">
         <p>Welcome Again<br>Let's <span class="only">Resume</span><br>The Journey</p>
      </div>
      <div class="container .active-popup">
          <!--div class="container glass-morphism"-->
         <div class="main-box login">
            <h1>Log In</h1>
            <form action="/manage/login" method="post">
               <div class="input-box">
                  <span class="icon"><i class='bx bxs-envelope'></i></span>
                  <input type="email" required name="email" >
                  <label for="">Email</label>
               </div>
               <div class="input-box">
                  <!-- <box-icon type='solid' name='lock'></box-icon> -->
                  <span class="icon"><i class='bx bxs-lock-alt'></i></span>
                  <input type="password" required name="password">
                  <label for="">Password</label>
               </div>

               <section class="radio-section">
                  <div class="user-type">
                     <div class="radio-item">
                        <input type="radio" name="user_typ" value="admin" id="admin" checked>

                        <label for="admin">Admin</label>
                     </div>
                     <div class="radio-item">
                        <input type="radio" name="user_typ" id="student" value="student">
                        <label for="student">Student</label>
                     </div>
                     <div class="radio-item">
                        <input type="radio" name="user_typ" id="teacher" value="teacher">
                        <label for="teacher">Teacher</label>
                     </div>
                  </div>
               </section>


               <button type="submit" class="login-button">LogIn</button>
            </form>
         </div>
      </div>


   </main>

   <footer>
      <p>Copyright &copy; SUST CSE- 39 & 85 </p>
   </footer>


</body>

</html>