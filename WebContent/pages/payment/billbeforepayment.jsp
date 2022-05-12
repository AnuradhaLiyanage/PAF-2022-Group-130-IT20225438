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
			<div class="lower">
				<div style="padding: 20px; width: 85%; margin-top: -50px; margin-right: 60px;">
					<div class="paymethod">
						<h4 class="pflpmh4">Payment Method</h4>
						<img style="margin-top: 10px;" src="https://seeklogo.com/images/V/visa-logo-6F4057663D-seeklogo.com.png" width="70px" />
						<img style="margin-top: 10px;" src="https://seeklogo.com/images/M/Master_Card-logo-027CB51F96-seeklogo.com.png" width="70px" />
					</div>
					<div class="pcardDetails">
						<form>
							<div class="form-group">
								<label for="pcardname">Name on Card</label>
								<input type="text" class="form-control" id="pcardname" placeholder="Jhon Smith"/>
							</div>
							
							<div class="row pfld">
								<div class="col">
									<div class="form-group">
										<label for="pcardnum">Card Number</label>
										<input type="text" class="form-control" id="pcardnum" name="pcardnum" onkeypress='return formats(this, event)' onkeyup='return numberValidation(event)' placeholder="0000-0000-0000-0000"/>
									</div>
								</div>
								<div class="col">
									<div class="form-group">
										<label for="pcardcvv">CVV</label>
										<input type="text" class="form-control" id="pcardcvv" name="pcardcvv" onkeypress='return formatcvv(this, event)' onkeyup='return numberOnlyCvv(event)' placeholder="***"/>
									</div>
								</div>
							</div>
							
							<div class="form-group pfld">
								<label for="pcardexpDate">Expiration Date</label>
								<input type="text" class="form-control" id="pcardexpDate" name="pcardexpDate" onkeypress='return formatexpdate(this, event)' onkeyup='return mmyyformat(event)' placeholder="MM/YY"/>
							</div>
							
							<button type="button" class="btn" id="makepayment">make a payment   <i class="bi bi-arrow-right"></i></button>
														
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>








