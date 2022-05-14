<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<script src="../../Components/jquery-3.6.0.min.js"></script>
<script src="../../Components/main.js"></script>
<script src="../../Components/noticeJS.js"></script>
<title>Insert title here</title>
<style>
      #intro {
        background-image: url(https://mdbootstrap.com/img/new/fluid/city/008.jpg);
        height: 100%;
      }
    </style>
</head>
<body>
	
	
<body>
	<div id="intro">
	
	
	<%String noticeUserid = request.getParameter("noticeUserid"); %>
	<form id="sendNoticeID">
	<input type="hidden" name="findpage" id="findpage" value="singlenoticedetails" />
	<input type="hidden" name="noticeUserid" id="noticeUserid" value=<%=noticeUserid %>>	
	</form>
	
	
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
	  <label for="disabledTextInput" class="form-label">User ID</label>
	    <input id="usernoticeid" type="text" class="form-control" aria-label="userid">
	  </div>
	  <div class="col mb-3">
	   <label for="disabledTextInput" class="form-label">Username</label>
	    <input id="noticeusername" type="text" class="form-control"  aria-label="username">
	  </div>
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
	    <input id="noticedate" type="text" class="form-control" aria-label="date">
	  </div>
	  <div class="col mb-3">
	   <label for="disabledTextInput" class="form-label">Time</label>
	    <input id="noticetime" type="text" class="form-control"  aria-label="time">
	  </div>
	 </div>
	 
       <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Notice Type</label>
      <input type="text" id="noticetype" class="form-control" >
    </div>
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Notice</label>
      <input type="text" id="noticeid" class="form-control input-lg">
      
    </div>
    
    </fieldset>
    
    <!-- 
    <form>
    <a href="../notice/NoticeUpdate.jsp" class="d-grid gap-2 col-6 mx-auto btn btn-success"  role="button">Update</a>
    </form>
	<br>
 	
    <button type="submit" class="d-grid gap-2 col-6 mx-auto btn btn-danger" id="remove">Delete</button>
    
     -->
     
    </div>
  </div>
  <div class="card">
   
    <div class="card-body">
      <h5 class="card-title">Payment Details</h5>
       <hr>
       <fieldset >
       <div class="mb-3">
       <form id="parseID" action="../payment/billbeforepayment.jsp" method="post">
		<input id="puid" type="text" name="puid" />
		<input type="button" name="sendID" id="sendID" class="mb-3" value="PAYMENT" />
	</form>
	
	<form id="parseID1" action="../payment/paymentHistory.jsp" method="post">
		<input id="puid1" type="text" name="puid" />
		<input type="button" name="sendIDtoHistory" class="mb-3" id="sendIDtoHistory" value="History" />
	</form>
	<fieldset disabled>
	<div class="mb-3">
      <label for="disabledTextInput" class="form-label">Paid Status</label>
      <input type="text" id="paidstatusid" class="form-control" >
    </div>
    </fieldset>
    </div>
    </fieldset>
    
      <div class="card">
   
    <div class="card-body">
      <h5 class="card-title">Billing Details</h5>
      <hr>
       <fieldset disabled>
        
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Bill Amount</label>
      <input type="text" id="billamountid" class="form-control" >
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
</div>
</div>
	<form id="updateAddress" >
		<input id="puid2" type="text" name="puid2" placeholder="User id to be update" />
		<input id="pbillingAddress" type="text" name="pbillingAddress" placeholder="Address to be update" />
		<input type="button" name="sendidtoupdate" id="sendidtoupdate" value="Update Address" />
	</form>
	
</body>
</html>