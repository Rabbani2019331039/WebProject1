<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Sign Up</title>

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


</head>

<body>
   <!-- script -->
   <script type="text/javascript" src="js/script.js" defer></script>

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
         <p>Let's <span class="only">Start </span><br>Your Course Management <br>Journey</p>
      </div>

      <div class="container registration">
      <!--div class="container registration glass-morphism"-->
         <div class="main-box">
            <h1>Sign Up</h1>
            <form id="reg-form" action="/manage/signup" method="POST">
               <div class="input-box">
                  <span class="icon"><i class='bx bxs-user'></i></span>
                  <input type="text" required name="user_name">
                  <label for="">Username</label>
               </div>
               <div class="input-box">
                  <span class="icon"><i class='bx bxs-envelope'></i></span>
                  <input type="email" required name="user_email">
                  <label for="">Email</label>
               </div>
               <div class="input-box">
                  <span class="icon"><i class='bx bxs-lock-alt'></i></span>
                  <input type="password" required name="user_password">
                  <label for="">Password</label>
               </div>
               <div class="input-box">
                  <span class="icon"><i class='bx bxs-lock-alt'></i></span>
                  <input type="password" required name="user_password_c">
                  <label for="">Confirm Password</label>
               </div>
               <section class="radio-section">
                  <div class="user-type">
                     <!--div class="radio-item">
                        <input type="radio" name="user_typ" value="admin" id="admin" checked>

                        <label for="admin">Admin</label>
                     </div-->
                     <div class="radio-item">
                         <input type="radio" name="user_typ" value="student" id="student" required>
                        <label for="student">Student</label>
                     </div>
                     <div class="radio-item">
                        <input type="radio" name="user_typ" value="teacher" id="teacher" required>
                        <label for="teacher">Teacher</label>
                     </div>
                  </div>
               </section>
               <button type="submit" class="login-button">Register</button>
            </form>
         </div>
      </div>
   </main>

   <footer>
      <p>Copyright &copy; SUST CSE- 39 & 85 </p>
   </footer>


</body>

</html>