<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../../Views/user.css" />
<script src="../../Components/jquery-3.6.0.min.js"></script>
<script src="../../Components/main.js"></script>
<script src="../../Components/userJS.js"></script>
<title>SignUp</title>
<style>
#signupinto {
background-image: url("https://wallpapercave.com/wp/wp2857841.png");
height: 100%;
}
</style>
</head>
<body>
<div id="signupinto">
<input type="hidden" id="pageselector" value="signuppage" />

	<div id="intro">
		<div class="container">
		<br>  
		<hr>
		
			<div class="card bg-light">
				<article class="card-body mx-auto" style="width: 600px;">
					<h4 class="card-title mt-3 text-center mb-3">Create Account</h4>
					<div class="d-flex justify-content-center">
					<p>
						<a href="https://accounts.google.com/servicelogin/signinchooser?flowName=GlifWebSignIn&flowEntry=ServiceLogin" class="btn btn-twitter"> <i class="fab fa-twitter"></i>   Sign in with Google</a>
						<a href="https://www.facebook.com/" class="btn  btn-facebook"> <i class="fab fa-facebook-f"></i>   Sign in with facebook</a>
					</p>
					</div>
					<p class="divider-text">
				        <span class="bg-light">OR</span>
				    </p>
					<form id="insertUserDetailsForm">
					
					<div class="form-group input-group">
				        <input name="cusname" class="form-control" placeholder="Enter your Name" type="text" id="cusname">
				    </div> <!-- form-group// -->
				    <div class="user_error hide" id="signupnameerror">Error</div>
				    <div class="form-group input-group">
				        <input name="cusaddress" class="form-control" placeholder="Enter your Address" type="text" id="cusaddress">
				    </div>
				    <div class="user_error hide" id="signupaddresserror">Error</div>
				     <div class="form-group input-group">
				        <input name="cusaccno" class="form-control" placeholder="Enter your AccountNumber" type="text" id="cusaccno">
				    </div>
				    <div class="user_error hide" id="signupaccnoerror">Error</div>
				     <div class="form-group input-group">
				        <input name="cusnic" class="form-control" placeholder="Enter your NIC Number" type="text" id="cusnic">
				    </div> 
				    <div class="user_error hide" id="signupnicerror">Error</div>
				     <div class="form-group input-group">
				        <input name="cusemail" class="form-control" placeholder="Email" type="email" id= "cusemail">
				    </div> 
				    <div class="user_error hide" id="signupemailerror">Error</div>
				    
				    <!-- form-group// -->
				    <div class="form-group input-group">
				    	<input name="cusphone" class="form-control" placeholder="Phone number" type="text" id="cusphone">
				    </div> <!-- form-group// -->
				    <div class="user_error hide" id="signuppnumerror">Error</div>
				    
				    <div class="form-group input-group">
						<select class="form-control" id="custype" name="custype">
							<option value="" >Select User Type</option>
							<option value="User">User</option>
							<option value="Manager">Manager</option>
						</select>
					</div> <!-- form-group end.// -->
					<div class="user_error hide" id="signuptypeerror">Error</div>
					
				    <div class="form-group input-group">
				        <input class="form-control" placeholder="Enter your username" type="text" id="cususername" name="cususername">
				    </div> <!-- form-group// -->
				    <div class="user_error hide" id="signupunameerror">Error</div>
				    <div class="form-group input-group mb-3">
				        <input class="form-control" placeholder="Enter your password" type="password" id="cuspassword" name="cuspassword">
				    </div> <!-- form-group// -->  
				    <div class="user_error hide" id="signuppasserror">Error</div>
				     <input type="hidden" value="insert" name="method" />                               
				    <div class="form-group d-flex justify-content-center">
				        <button type="button" id="createaccount" class="btn btn-primary d-grid gap-2 col-6 mx-auto  "> Create Account  </button>
				    </div> <!-- form-group// -->      
				    <p class="text-center">Have an account? <a href="../../">Log In</a> </p>                                                                 
				</form>
				</article>
			</div> <!-- card.// -->
			
		</div> 
		<!--container end.//-->
	</div>
	</div>

</body>
</html>