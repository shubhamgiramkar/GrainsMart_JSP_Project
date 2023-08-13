<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Events</title>
    <link rel="stylesheet" href="css/grains.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
   

</head>
<body>
  <div class="nav">
  <ul>
    <li class="logo">GrainsMart</li>
    <li class="account"><a href="account.jsp">Account</a></li>
    <li><a href="SellGrain.jsp">Sell Grains</a></li>
    
    <li><a class="active" href="Grains.jsp">Order Grains</a></li>
    <li><a  href="AboutUs.html">About Us</a></li>
    <li><a  href="index.jsp">Home</a></li>
  </ul></div>
 
  <!--<img class="img" src="css/img/grains-main.jpg" alt="">-->

  <form action="BookForm.jsp" method="POST">
  
  <h2 class="corh">BUY GRAINS FROM FARMERS...</h2><br>
     <hr>
     
      <section class="cor">
        
        <div class="container">
          <div class="card">
            <div class="front">
              <div class="content">
                <img src="css/img/weat.jpg" />
                <h3>WHEAT</h3>
              </div>
            </div>
            <div class="back">
              <div class="content">

                <p><b>Varieties: </b> 
                  Common wheat or Bread Wheat,Durum or Pasta Wheat.
                 </p>
                <p><b>Price:</b>25Rs-30Rs/kg </p>
                
                <button name="1" value="Wheat">ORDER NOW</button>


                <!--<p>
                  Lorem, ipsum dolor sit amet consectetur adipisicing elit. Iure
                  nam expedita exercitationem?
                </p>-->
              </div>
            </div>
          </div>
        </div>
  
        <div class="container">
          <div class="card">
            <div class="front">
              <div class="content">
                <img src="css/img/rice.jpg" />
                <h3>RICE</h3>
              </div>
            </div>
            <div class="back">
              <div class="content">
                <p><b>Varieties: </b> 
                  Brown Rice,Basmati Rice,Jasmine Rice,Indrayani Rice.
                 </p>
                <p><b>Price:</b>25Rs-100Rs/kg </p>
                
                <button name="2" value="Rice">ORDER NOW</button>
              </div>
            </div>
          </div>
        </div>
  
        <div class="container">
          <div class="card">
            <div class="front">
              <div class="content">
                <img src="css/img/jawar.jpg" />
                <h3>JOWAR</h3>
              </div>
            </div>
            <div class="back">
              <div class="content">
                <p><b>Varieties: </b> 
                 Yellow Jowar,White Jowar.
                 </p>
                <p><b>Price:</b>22Rs-60Rs/kg </p>
                
                <button name="3" value="Jowar">ORDER NOW</button>

              </div>
            </div>
          </div>
        </div>
     </section>



      <h2 class="wedh"></h2><br>
     <hr>
    <section class="wed">
        
        <div class="container">
          <div class="card">
            <div class="front">
              <div class="content">
                <img src="css/img/bajara.jpeg" />
                <h3>BAJRA</h3>
              </div>
            </div>
            <div class="back">
              <div class="content">

                <p><b>Varieties: </b>Bajra.
                 </p>
                <p><b>Price:</b>24Rs-40Rs/kg </p>
                
                <button name="4" value="Bajra">ORDER NOW</button>

              </div>
            </div>
          </div>
        </div>
  
        <div class="container">
          <div class="card">
            <div class="front">
              <div class="content">
                <img src="css/img/corn.jpg"/>
                <h3>CORN</h3>
              </div>
            </div>
            <div class="back">
              <div class="content">
               
                <p><b>Varieties: </b>White Corn,Sweet Corn.
                 </p>
                <p><b>Price:</b>25Rs-30Rs/kg </p>
                
                <button name="5" value="Corn">ORDER NOW</button>

              </div>
            </div>
          </div>
        </div>
  
        <div class="container">
          <div class="card">
            <div class="front">
              <div class="content">
                <img src="css/img/chana.jpg" />
                <h3>CICERS(Chana)</h3>
              </div>
            </div>
            <div class="back">
              <div class="content">
                 <p><b>Varieties: </b>Hybrid Chana,Bangal Gram.
                 </p>
                <p><b>Price:</b>50Rs-80Rs/kg </p>
                
                <button name="6" value="Cicers">ORDER NOW</button>


              </div>
            </div>
          </div>
        </div>
      </section>

</form>



      <!--section for footer -->

<section class = "footer">
  <div class="container1">
     
      <div class="col-3">
       
       <div class="f-desc">
           <ul>
           <li><a href = "index.html"> Home </a></li>
            <li><a href = "about.html">About Us</a></li>
            <li><a href = "Event.php">Events</a></li>
            <li><a href = "services.php">Services</a></li>
            <li><a href = "contact.php">Contanct Us</a></li>
            <li><a href = "account.php">Account</a></li>
             </ul>
       </div>
     </div>
     
       <div class="f-desc">
           <div class="icon">
               <a href="">
                   <i class="fa fa fa-facebook"></i>
               </a>
               <a href="">
                 <i class="fa fa fa-instagram"></i>
               </a>
               <a href="">
                 <i class="fa fa fa-youtube"></i>
               </a>
               <a href="https://www.linkedin.com/in/shubham-giramkar-0253bb1aa">
                 <i class="fa fa fa-linkedin"></i>
               </a>
           </div>
       </div>
     </div>
  
  <hr> 
  <br>
  <br>
  <br>
     <p style= "color: green;"> &copy;copyrights2022 TSF. All rights reserved!<br>
      made by @GiramkarShubham. </p>
</section>


  </body>
  </html>
