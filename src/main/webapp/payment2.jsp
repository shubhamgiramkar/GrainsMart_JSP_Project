<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
     <%@page import="java.text.DateFormat"%>
     <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>




<%

Date today = new Date();

SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");  
String strDate= formatter.format(today);
//out.println(strDate);
DateFormat shortDF = DateFormat.getDateInstance(DateFormat.SHORT);
String date=shortDF.format(today);



String g_id=request.getParameter("g_id");
String f_id=request.getParameter("f_id");
String quantity=request.getParameter("quantity");
String add=request.getParameter("add");
String bill=request.getParameter("bill");
String username=(String)session.getAttribute("username");
// String date=request.getParameter("date");
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
String grains_stock="";


try{
	

 Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainsmart", "root", "123");
      Statement st=conn.createStatement();
      ResultSet rs=st.executeQuery("select * from customer where c_username='"+ username +"'");
	    while(rs.next()){
	    	 c_id=rs.getString("c_id");
	    	 c_username=rs.getString("c_username");
	    	 c_Name=rs.getString("c_Name");
	    	 c_email=rs.getString("c_email");
	    	 c_MobileNo=rs.getString("c_MobileNo");
	    	 c_Address=rs.getString("c_Address");
	    }
	    
	    ResultSet rs1=st.executeQuery("select * from farmer where f_id='"+ f_id +"'");
	    while(rs1.next()){
	    	 f_Name=rs1.getString("f_Name");
	    	 f_email=rs1.getString("f_email");
	    	 f_MobileNo=rs1.getString("f_MobileNo");
	    	 f_Address=rs1.getString("f_Address");
	    }
	    
	    ResultSet rs2=st.executeQuery("select * from grains where grains_id='"+ g_id +"'");
	    while(rs2.next()){
	    	grains_name=rs2.getString("grains_name");
	    	grains_variety=rs2.getString("grains_variety");
	    	grains_price=rs2.getString("grains_price");
	    	grains_stock=rs2.getString("grains_stock");
	    }
	    int q2=Integer.parseInt(grains_stock);
	    int q1=Integer.parseInt(quantity);
	    q2=q2-q1;
		st.executeUpdate("update grains set grains_stock='"+q2+"'where grains_id='"+ g_id +"'");

    st.executeUpdate("insert into order1(c_id,f_d,g_id,order_quantity,total_bill,delivery_add,order_date,order_week,grains_name,grains_variety,grains_price,f_Name,f_email,f_MobileNo,f_Address,c_Name,c_email,c_MobileNo,c_Address)values('"+c_id+"','"+f_id+"','"+g_id+"','"+quantity+"','"+bill+"','"+add+"','"+strDate+"',1,'"+grains_name+"','"+grains_variety+"','"+grains_price+"','"+f_Name+"','"+f_email+"','"+f_MobileNo+"','"+f_Address+"','"+c_Name+"','"+c_email+"','"+c_MobileNo+"','"+c_Address+"')");
	//st.executeUpdate("insert into order(c_id,f_d,g_id,order_quantity,total_bill,delivery_add,order_date,order_week,grains_name,grains_variety,grains_price,f_Name,f_email,f_MobileNo,f_Address,c_Name,c_email,c_MobileNo,c_Address)values('"+c_id+"','"+f_id+"','"+g_id+"','"+quantity+"','"+bill+"','"+add+"','"+strDate+"',1,'"+grains_name+"','"+grains_variety+"','"+grains_price+"','"+f_Name+"','"+f_email+"','"+f_MobileNo+"','"+f_Address+"','"+c_Name+"','"+c_email+"','"+c_MobileNo+"','"+c_Address+"')");
	//st.executeUpdate("insert into order(c_id,f_d,g_id,order_quantity,total_bill,delivery_add,order_date,order_week,grains_name,grains_variety,grains_price,f_Name,f_email,f_MobileNo,f_Address,c_Name,c_email,c_MobileNo,c_Address)values('"+c_id+"','"+f_id+"','"+g_id+"','"+quantity+"','"+bill+"','"+add+"','"+strDate+"',1,'"+grains_name+"','"+grains_variety+"','"+grains_price+"','"+f_Name+"','"+f_email+"','"+f_MobileNo+"','"+f_Address+"','"+c_Name+"','"+c_email+"','"+c_MobileNo+"','"+c_Address+"')");

	//int i=st.executeUpdate("insert into orders(c_id,f_d,g_id,order_quantity,total_bill,delivery_add,order_date)values('"+c_id+"','"+f_id+"','"+g_id+"','"+quantity+"','"+bill+"','"+add+"','"+strDate+"')");

    //response.sendRedirect("PaymentSuccess.html");
    %><script>alert("Order Confirmed!!");</script><% 
   
}catch(Exception e){
	out.println(e);
} 

%>

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
    					<b>Customer Id:</b><%out.print(c_id); %><br>
    					<b>Username:</b><%out.print(c_username); %><br>
    					<b>Name:</b><%out.print(c_Name); %><br>
    					<b>Email:</b><%out.print(c_email); %><br>
    					<b>Mobile No:</b><%out.print(c_MobileNo); %><br>
    					<b>Address:</b><%out.print(c_Address); %><br>
    					
    					
    				</address>
    			</div>
    			<div class="col-xs-2 ">
    				<address>
    				<strong style="font-size:18px;">Farmer Details:</strong><br>
    					<b>Farmer Id:</b><%out.print(f_id); %><br>
    					<b>Name:</b><%out.print(f_Name); %><br>
    					<b>Email:</b><%out.print(f_email); %><br>
    					<b>Mobile No:</b><%out.print(f_MobileNo); %><br>
    					<b>Address:</b><%out.print(f_Address); %><br>
    					
    					
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
    					<strong>Order Date:</strong><br><%out.print(date);%>
    					<br><br>
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
    					<b>Grain Id:</b><%out.print(g_id); %><br>
    					<b>Grain Name:</b><%out.print(grains_name); %><br>
    					<b>Grain Variety:</b><%out.print(grains_variety); %><br>
    					<b>Delivery Address:</b><%out.print(add); %><br>
    					
    				</address>
    				</div>
    				<address>
    				<div class="col-xs-4">
    				<!--<strong style="font-size:15px; ">Grains Details:</strong><br>-->
                        <b>Grain Price:</b><%out.print(grains_price); %><br>
    					<b>Order Quantity:</b><%out.print(quantity); %><br><br>
    					<strong style="font-size:18px; ">Total Bill:</strong><br>
    					<%out.print(bill); %><br>	
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