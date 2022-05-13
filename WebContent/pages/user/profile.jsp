<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../../Views/user.css" />
<script src="../../Components/jquery-3.2.1.min.js"></script>
<script src="../../Components/main.js"></script>
<title>Insert title here</title>
<style>
      #intro {
        background-image: url(https://mdbootstrap.com/img/new/fluid/city/008.jpg);
        height: 100%;
      }
    </style>
</head>

<body>
	<div id="intro">
	
	<div class="container">
	<div class="d-flex justify-content-center" >
		<div class="col col-xl-10" >
		<div class="card" style="border-radius: 1rem;" >
		<div class="row g-3 p-5 " >
		<div class="card-body p-4 p-lg-5 text-black">
  <h2 class="mb-3">Customer Details</h2><br>
  <div class="container">        
	<form>
  <fieldset disabled>
    <div class="row">
	  <div class="col">
	  <label for="disabledTextInput" class="form-label">ID</label>
	    <input type="text" class="form-control" aria-label="First name">
	  </div>
	  <div class="col mb-3">
	   <label for="disabledTextInput" class="form-label">UID</label>
	    <input type="text" class="form-control"  aria-label="Last name">
	  </div>
	 </div>
 
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Username</label>
      <input type="text" id="disabledTextInput" class="form-control" >
    </div>
    
    
	 
     
   
    
    
    
  </fieldset>
  
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

	
	<hr>
	<div class="container">
	<div class="d-flex justify-content-center" >
		<div class="col col-xl-10" >
		<div class="card" style="border-radius: 1rem;" >
		<div class="row g-3 p-5 " >
		<div class="card-body p-4 p-lg-5 text-black">

  <div class="container">
	<div class="card-group ">
  <div class="card">
     
    <div class="card-body">
      <h5 class="card-title">Notice Detail</h5>
      <hr>
       <fieldset disabled>
       <div class="row">
	  <div class="col">
	  <label for="disabledTextInput" class="form-label">Date</label>
	    <input type="text" class="form-control" aria-label="First name">
	  </div>
	  <div class="col mb-3">
	   <label for="disabledTextInput" class="form-label">Time</label>
	    <input type="text" class="form-control"  aria-label="Last name">
	  </div>
	 </div>
	 
       <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Notice Type</label>
      <input type="text" id="disabledTextInput" class="form-control" >
    </div>
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Notice</label>
      <input type="text" id="disabledTextInput" class="form-control" >
    </div>
    
    </fieldset>
    <a href="../notice/NoticeUpdate.jsp" class="d-grid gap-2 col-6 mx-auto btn btn-success"  role="button">Update</a>
	<br>
 	
    <button type="submit" class="d-grid gap-2 col-6 mx-auto btn btn-danger" id="remove">Delete</button>
    </div>
  </div>
  <div class="card">
   
    <div class="card-body">
      <h5 class="card-title">Payment Details</h5>
       <hr>
       <fieldset disabled>
        
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Payment</label>
      <input type="text" id="disabledTextInput" class="form-control" >
    </div>
    </div>
  </div>
  <div class="card">
   
    <div class="card-body">
      <h5 class="card-title">Billing Details</h5>
      <hr>
       <fieldset disabled>
        
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Billing</label>
      <input type="text" id="disabledTextInput" class="form-control" >
    </div>
    </div>
  </div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>