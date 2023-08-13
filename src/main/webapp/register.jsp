<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account</title>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account</title>
    <link rel="stylesheet" href="css/account.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="nav">
    <ul>
      <li class="logo">GrainsMart</li>
      <li class="active"><a href="account.jsp">Account</a></li>
      <li><a href="SellGrain.jsp">Sell Grains</a></li>
      
      <li><a href="Grains.jsp">Order Grains</a></li>
      <li><a  href="AboutUs.html">About Us</a></li>
      <li><a href="index.jsp">Home</a></li>
    </ul>
  </div>
  
<div class="popup" id="popup">


   <div class="register" id="register-class">
   <form action="RegisterBackend.jsp" method="post">
   
   <div class="form">
     <h2>Register</h2>
     <div class="form-element">
     <label for="login_type">Choose a Login Type:</label>
  <select name="login_type">
  <option value="1">Customer</option>
  <option value="2">Farmer</option>
  </select></div>
      <div class="form-element">
       <label for="user_name">Username</label>
       <input type="text" id="user_name" name="user_name" required placeholder="Enter UserName"	pattern="[A-Za-z0-9]+" title="Username should only contain lowercase letters. e.g. john1">
     </div>
  
     <div class="form-element">
       <label for="u_name">Name</label>
       <input type="text" id="u_name" name="u_name" required placeholder="Enter Name" pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$" title="Please enter on alphabets only.">
     </div>
     <div class="form-element">
       <label for="u_mob">Mobile Number</label>
       <input type="tel" id="u_mob"name="u_mob" title="Invalid Number" pattern="[1-9]{1}[0-9]{9}" required placeholder="Enter Mobile Number">
     </div>
     <div class="form-element">
       <label for="u_email">Email</label>
       <input type="email" id="u_email" name="u_email" required placeholder="Enter Email">
     </div>
     <div class="form-element">
       <label for="add">Address</label>
       <input type="text" id="add" name="add" required placeholder="Enter Address">
     </div>
     
     <div class="form-element">
       <label for="u_password">Password</label>
       <input type="password" id="u_password"  name="u_password" required placeholder="Enter Password"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="at least one number and one uppercase and lowercase letter, and at least 6 or more characters">
     </div>
     <div class="form-element">
       <label for="uc_password">Confirm Password</label>
       <input type="password" id="uc_password" name="uc_password"required placeholder="Re-enter Password">
     </div>

     <div class="form-element">
       <button name="register_btn">Register</button>
     </div>
     <div class="register-btn">
       <p>Already have account?
       <a href="account.jsp"style="text-decoration:none;color:red;">
         <b>Login</b></a></p>
     </div>
</div>
</form>
  </div>
  
    </div>
</body>
 
</html>