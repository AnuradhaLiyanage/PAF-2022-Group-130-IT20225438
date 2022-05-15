<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../../Views/billing.css" />
<script src="../../Components/jquery-3.6.0.min.js"></script>
<script src="../../Components/main.js"></script>
<title> Billing details</title>

	<style>
      #intro {
        background-image: url("https://mdbootstrap.com/img/new/fluid/city/018.jpg");
        height: 125vh;
      } 
      
    </style>
    
</head>
<body>
  <div id="intro">
	
	
<div class="container">
<br>  


<div class="card bg-light">
<article class="card-body mx-auto" style="width: 600px;">
	
	
	<form id="insertBills">
	<h1 class=" d-flex justify-content-center mb-3"" >Billing Details</h1>
    <hr>
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="billinguid" class="form-control" id="billinguid" placeholder="Enter User ID" type="text">
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="billingusername" class="form-control" id="billingusername" placeholder="Enter Username" type="text">
    </div> 
    
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="billingstartdate" class="form-control" id="billingstartdate" placeholder="Enter start Date" type="date">
    </div> 
    
       <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="billingenddate" class="form-control" id="billingenddate" placeholder="Enter start Date" type="date">
    </div> 
    
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="billingaccountnumber" class="form-control" id="billingaccountnumber" placeholder="Enter Account Number" type="text">
    </div> 
    
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="billingbill" class="form-control" id="billingbill" placeholder="Enter Bill Number" type="text">
    </div> 
    
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="billingunit" class="form-control" id="billingunit" placeholder="Enter No of Unit" type="text">
    </div> 
     
      <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="billingamount" class="form-control" id="billingamount" placeholder="Enter Amount" type="text">
    </div> 
    
     <!-- form-group// -->                                     
    <div class="form-group">
        <button type="submit" id="billingbtnSave" class="btn btn-primary btn-block"> Submit Billing Details  </button>
        <input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
    </div> <!-- form-group// -->      
                                                                   
</form>
</article>
</div> <!-- card.// -->

</div> 
<!--container end.//-->
</div>

	
	
 </form>
 </div>
 </div>
 </section>


 <br>
 <div class="row">
 <div class="col-12" id="colStudents">

 </div>
 </div>
</div>
</body>
</html>