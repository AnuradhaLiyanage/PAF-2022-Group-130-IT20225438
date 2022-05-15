<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../../Views/billing.css" />
<script src="../../Components/jquery-3.6.0.min.js"></script>
<script src="../../Components/main.js"></script>
<script src="../../Components/billingJS.js"></script>
<title>Billing_View</title>
</head>
<style>
.usertable  {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

.billingtd {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

.usertr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<body>
<h1 class="mb-3 d-flex justify-content-center" > Billing Details</h1>
	<div class=container>
	<table class= "usertable">
	  <tr class="billingtr">
	    <th class="billingtd">UserID</th>
	    <th class="billingtd">Name</th>
	    <th class="billingtd">Start Date</th>
	    <th class="billingtd">Expire Date</th>
	    <th class="billingtd">Account Number</th>
	    <th class="billingtd">Bill Number</th>
	    <th class="billingtd">No of Unit</th>
	    <th class="billingtd">Amount</th>
	    <th class="billingtd">Action</th>
	    
	    
	    
	  </tr>
	  <tbody id="user_table_billing"></tbody>
	  
	<!--    
	    <td class="billingtd">
	    <a href="../billing/billingdetailsview.jsp" class=" btn btn-success" role="button">Update</a>
	    <button type="submit" class="btn btn-danger" id="remove">Delete</button>
	   
	    </td>
	    -->  
	 
	
	</table>
	</div>



</body>
</html>