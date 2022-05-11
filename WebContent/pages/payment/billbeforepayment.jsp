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
	
	<div class="pbc1">
		<h1 id="pbillh1" >Confirm your bill to pay the payment.</h1>
		
		<div id="pbillformleft">	
			<form id="pbill" name="pbill">
				<div class="container">
					<h4 class="pblefth4">Person Details</h4>
					<div class="form-group">
				    	<label class="pfd1lfsize" for="pfd1name">Name</label>
				   		<input type="text" class="form-control pfi1" id="pfd1name" readonly="readonly">
					</div>
					
					<div class="row pfd1" >
					  <div class="col">
						  	<div class="form-group">
							    <label class="pfd1lfsize" for="pfd1accnumber">Account Number</label>
							    <input type="text" class="form-control pfi1" id="pfd1accnumber" readonly="readonly">
							</div>
						</div>
						<div class="col">
								<div class="form-group">
						    	<label class="pfd1lfsize" for="pfd1billno">Bill No</label>
						   		<input type="text" class="form-control pfi1" id="pfd1billno" readonly="readonly">
						  	</div>
					  </div>
					</div>
				
					<div class="form-group pfd1">
					    <label class="pfd1lfsize" for="pfd1address">Home Address</label>
					    <input type="text" class="form-control pfi1" id="pfd1address" readonly="readonly">
					</div>
					<div class="form-group pfd1">
					    <label class="pfd1lfsize" for="pfd1nic">National ID</label>
					    <input type="text" class="form-control pfi1" id="pfd1nic" readonly="readonly">
					</div>
					<div class="form-group pfd1">
					    <label class="pfd1lfsize" for="pfd1email">Email</label>
					    <input type="text" class="form-control pfi1" id="pfd1email" readonly="readonly">
					</div>
					<div class="form-group pfd1">
					    <label class="pfd1lfsize" for="pfd1phone">Phone</label>
					    <input type="text" class="form-control pfi1" id="pfd1phone" readonly="readonly">
					</div>
				</div>
			</form>
		</div>
		
		<div id="pbillformright">
			<div class="upper">
				<form id="pbillupper" name="pbillupper">
					<div class="pContainer">
						<h4 class="pbupperh4">Payment Summary</h4>
						
						<div class="row pfd1" >
						  <div class="col">
							  	<div class="form-group pfduppu">
								    <label class="pfd1lu" for="pfd1ppu">Price Per Unit (PPU)</label>
								    <input type="text" class="form-control pfi1" id="pfd1ppu" readonly="readonly">
								</div>
							</div>
							<div class="col">
									<div class="form-group pfduu">
							    	<label class="pfd1lu" for="pfd1units">NO Units</label>
							   		<input type="text" class="form-control pfi1" id="pfd1units" readonly="readonly">
							  	</div>
						  </div>
						</div>
						
						<div class="row pfd1" >
						  <div class="col">
							  	<div class="form-group">
								    <label class="pfd1lu" for="pfd1sDate">Start Date</label>
								    <input type="text" class="form-control pfi1" id="pfd1sDate" readonly="readonly">
								</div>
							</div>
							<div class="col">
									<div class="form-group">
							    	<label class="pfd1lu" for="pfd1eDate">End Date</label>
							   		<input type="text" class="form-control pfi1" id="pfd1eDate" readonly="readonly">
							  	</div>
						  </div>
						</div>
						
					</div>
					
						<div class="form-group pfd1 totPayble">
					    <label class="pfd1lu" for="pfd1totalpayable">Total Payable</label>
					    <input type="text" class="form-control pfi1" id="pfd1totalpayable" readonly="readonly">
						</div>
					
				</form>
			</div>
			<div class="lower"></div>
		</div>
	</div>
</body>
</html>








