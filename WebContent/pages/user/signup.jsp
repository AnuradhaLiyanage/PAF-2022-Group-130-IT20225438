<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../../Views/user.css" />
<script src="../../Components/jquery-3.2.1.min.js"></script>
<script src="../../Components/main.js"></script>
<title>SignUp</title>
<style>
#intro {
background-image: url("");
height: 100%;
}
</style>
</head>
<body>

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
	<form>
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="" class="form-control" placeholder="Enter your Name" type="text" id="cusname">
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="" class="form-control" placeholder="Enter your Address" type="text" id="cusaddress">
    </div> 
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="" class="form-control" placeholder="Enter your AccountNumber" type="text" id="cusaccno">
    </div> 
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="" class="form-control" placeholder="Enter your NIC Number" type="text" id="cusnic">
    </div> 
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="" class="form-control" placeholder="Email" type="email" id= "cusemail">
    </div> 
    
    <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
		</div>
		
    	<input name="" class="form-control" placeholder="Phone number" type="text" id="cusphone">
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-building"></i> </span>
		</div>
		<select class="form-control" id="custype">
			<option selected=""> Select User Type</option>
			<option id ="1">User</option>
			<option id ="2">Manager</option>
			
		</select>
	</div> <!-- form-group end.// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" placeholder="Enter your username" type="password" id="cususername">
    </div> <!-- form-group// -->
    <div class="form-group input-group mb-3">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" placeholder="Enter your password" type="password" id="cuspassword">
    </div> <!-- form-group// -->  
    
     <div class="user_error" id="signuperror">Error</div>
                                        
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


</body>
</html>