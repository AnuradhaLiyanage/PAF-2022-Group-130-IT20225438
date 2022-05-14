<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../../Views/payments.css"/>
<script src="../../Components/jquery-3.6.0.min.js"></script>
<script src="../../Components/main.js"></script>
<script src="../../Components/paymentsJS.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="historyBody">
	<!-- user id from profile.jsp -->
	<% String uid = request.getParameter("puid"); %>
	<!-- automatic send form for get bill details -->
	<form id="billBeforePay" name="billBeforePay">
		<input type="hidden" name="parseuidfH" id="parseuidfH" value=<%=uid%> />
		<input id="paymentfuncpages" name="paymentfuncpages" type="hidden" value="paymentHistory" />
		<input type="hidden" name="puid" id="puid"/>
	</form>
	
	<h1 class="phistoryTitle">Payment History</h1>
	
	<table class="table historytbl" style="background: #fff;">
	  <thead class="thead-dark" style="background: black; color:white;">
	    <tr>
	      <th scope="col">Payment ID</th>
	      <th scope="col">User ID</th>
	      <th scope="col">Name</th>
	      <th scope="col">Account Number</th>
	      <th scope="col">Billing Address</th>
	      <th scope="col">Email</th>
	      <th scope="col">Phone</th>
	      <th scope="col">Total</th>
	      <th scope="col">Paid Amount</th>
	      <th scope="col">Balance</th>
	      <th scope="col">Paid Status</th>
	      <th scope="col">Expire Date</th>
	      <th scope="col">Action</th>
	    </tr>
	  </thead>
	  <tbody id="historyTbody">
	  </tbody>
	</table>

</body>
</html>