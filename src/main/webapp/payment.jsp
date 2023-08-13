<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*;"%>
<%try{
String g_id=request.getParameter("g_id");
String f_id=request.getParameter("f_id");
String quantity=request.getParameter("quantity");
String add=request.getParameter("add");
String bill=request.getParameter("bill");
String username=(String)session.getAttribute("username");

String c_id="";
String c_username="";
String c_Name="";
String c_email="";
String c_MobileNo="";
String c_Address="";

String f_Name="";
String f_email="";
String f_MobileNo="";
String f_Address="";

String grains_name="";
String grains_variety="";
String grains_price="";
String date1="";}catch(Exception e){
	out.print(e);
}%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creating PDF from HTML</title>
    <link rel="stylesheet" href="style.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/nav.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js" ></script>
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
    <div id="whatToPrint" style="width: 1000px;height:2000px">
        <div class="container">
    <div class="row">
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h2>GrainsMart Order Receipt</h2>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    				<strong style="font-size:18px;">Customer Details:</strong><br>
    					<b>Customer Id:</b>shubham %><br>
    					<b>Username:</b>gggg%><br>
    					<b>Name:</b>ggggggggg<br>
    					<b>Email:</b>ggggggg<br>
    					<b>Mobile No:</b>ggggggg<br>
    					<b>Address:</b>ggggggggggg<br>
    					
    					
    				</address>
    			</div>
    			<div class="col-xs-2 ">
    				<address>
    				<strong style="font-size:18px;">Farmer Details:</strong><br>
    					<b>Farmer Id:</b>ggggggg<br>
    					<b>Name:</b>gggggggg<br>
    					<b>Email:</b>gggggggg<br>
    					<b>Mobile No:</b>4444 <br>
    					<b>Address:</b>jjjjjjj<br>
    					
    					
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong>Payment Method:</strong>
    					Online<br>
    					<strong>Payment Status:</strong>
    					Done<br>
    				</address>
    			</div>
    			<div class="col-xs-2 ">
    				<address>
    					<strong>Order Date:</strong><br>
    					<%//out.print(date1); %><br><br>
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-8">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    				<div class="row">
    			    <div class="col-xs-6">
    				<address>
    				<!--  <strong style="font-size:15px;">Grains Details:</strong><br>-->
    					<b>Grain Id:</b>eeeee<br>
    					<b>Grain Name:</b>gggggg<br>
    					<b>Grain Variety:</b>ggggggg<br>
    					<b>Delivery Address:</b>gg<br>
    					
    				</address>
    				</div>
    				<address>
    				<div class="col-xs-4">
    				<!--<strong style="font-size:15px; ">Grains Details:</strong><br>-->
                        <b>Grain Price:</b>ggggg<br>
    					<b>Order Quantity:</b>ggggggg<br><br>
    					<strong style="font-size:18px; ">Total Bill:</strong><br>
    					ggggggg<br>	
    				</address>
    				</div>
    				</div>
    				
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    

   <br><br>     <!--<img src="https://th.bing.com/th/id/OIP.wdkLi0wAUuLf5gdNFincPwHaEd?pid=ImgDet&rs=1"/>-->
<div class="btn-group" ">
                <a href="javascript:generatePDF()" id="downloadButton" class="btn btn-lg btn-warning">Click To Download</a>
            </div>
       <!--  <a href="javascript:generatePDF()" id="downloadButton">Click to download</a>-->
    </div>

    <script>
        async function generatePDF() {
            document.getElementById("downloadButton").innerHTML = "Currently downloading, please wait";

            //Downloading
            var downloading = document.getElementById("whatToPrint");
            var doc = new jsPDF('l', 'pt');

            await html2canvas(downloading, {
                //allowTaint: true,
                //useCORS: true,
                width: 1000
            }).then((canvas) => {
                //Canvas (convert to PNG)
                doc.addImage(canvas.toDataURL("image/png"), 'PNG', 5, 5, 1000, 2000);
            })

            doc.save("Document.pdf");

            //End of downloading

            document.getElementById("downloadButton").innerHTML = "Click to download";
        }
    </script>
</body>
</html>

<!--

HTML + CSS -> PNG (html2canvas)
PNG -> Add to PDF (jsPDF)
Download PDF (jsPDF)

-->