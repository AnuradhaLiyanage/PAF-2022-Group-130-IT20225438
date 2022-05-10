<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../../Views/payments.css"/>
<script src="../../Components/jquery-3.6.0.min.js"></script>
<script src="../../Components/main.js"></script>
<script src="../../Components/paymentsJS.js"></script>
<meta charset="ISO-8859-1">
<title>Bill Verify</title>
</head>
<body>
	<!-- user id from profile.jsp -->
	<% String uid = request.getParameter("uid"); %>
	<!-- automatic send form for get bill details -->
	<form id="billBeforePay" name="billBeforePay">
		<input type="hidden" name="uid" id="uid" value=<%=uid%> />
	</form>
	
	<h1 id="pbillh1" >Confirm your bill to pay the payment.</h1>
	<div id="pbillform">
		<form id="pbill" name="pbill">
			<div class="form-group">
		    	<label for="name">Name</label>
		   		<input type="text" class="form-control pfi1" id="name" readonly="readonly">
		    </div>
		  	<div class="form-group pfd1">
			    <label for="accnumber">Account Number</label>
			    <input type="text" class="form-control pfi1" id="accnumber" readonly="readonly">
			</div>
			<div class="form-group pfd1">
			    <label for="address">Home Address</label>
			    <input type="text" class="form-control pfi1" id="address" readonly="readonly">
			</div>
			<div class="form-group pfd1">
			    <label for="nic">National ID</label>
			    <input type="text" class="form-control pfi1" id="nic" readonly="readonly">
			</div>
			<div class="form-group pfd1">
			    <label for="email">Email</label>
			    <input type="text" class="form-control pfi1" id="email" readonly="readonly">
			</div>
			<div class="form-group pfd1">
			    <label for="phone">Phone</label>
			    <input type="text" class="form-control pfi1" id="phone" readonly="readonly">
			</div>
			<div class="form-group pfd1">
			    <label for="totalpayable">Total Payable</label>
			    <input type="text" class="form-control pfi1" id="totalpayable" readonly="readonly">
			</div>
			
			<button type="button" class="btn btn-primary" id="proceed">PROCEED</button>
		</form>
	</div>
</body>
</html>








