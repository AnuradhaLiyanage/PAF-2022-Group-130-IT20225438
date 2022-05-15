<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../../Views/user.css" />
<script src="../../Components/jquery-3.6.0.min.js"></script>
<script src="../../Components/main.js"></script>
<script src="../../Components/userJS.js"></script>
<title>userupdate</title>
<style>
#intro {
background-image: url("");
height: 100%;
}
</style>
</head>
<body>

	<%String uid = request.getParameter("uid"); %>
	<form id="sendCusUid">
		<input type="hidden" name="method" id="method" value="singlecusdetails" />
		<input type="hidden" name="uidtobeupdate" id="uidtobeupdate" value=<%=uid%>>
	</form>

<div id="intro">
<div class="container">
<div class="d-flex justify-content-center" >
<div class="col col-xl-10" >
<div class="card" style="border-radius: 1rem;" >
<div class="row g-3 p-5 " >
<div class="card-body p-4 p-lg-5 text-black">
<h2>Customer Details</h2><br>
<div class="container">
<form>
<fieldset >
<div class="mb-3">
<label for="disabledTextInput" class="form-label">UserID</label>

<input type="text" id="userID" name="userID" class="form-control" readonly="readonly" >

</div>
<div class="mb-3">
<label for="disabledTextInput" class="form-label">Name</label>
<input type="text" id="cusname" name="cusname" class="form-control" >
</div>
<div class="mb-3">
<label for="disabledTextInput" class="form-label">Address</label>
<input type="text" id="cusaddr" name="cusaddr" class="form-control" >
</div>
<div class="mb-3">
<label for="disabledTextInput" class="form-label">AccountNumber</label>
<input type="text" id="cusaccno" name="cusaccno" class="form-control" >
</div>
<div class="mb-3">
<label for="disabledTextInput" class="form-label">NIC</label>
<input type="text" id="cusnic" name="cusnic" class="form-control" >
</div>
<div class="mb-3">
<label for="disabledTextInput" class="form-label">Email</label>
<input type="text" id="cusemail" name="cusemail" class="form-control" >
</div>
<div class="mb-5">
<label for="disabledTextInput" class="form-label">Phone Number</label>
<input type="text" id="cuspno" name="cuspno" class="form-control" >
</div>
<div class="mb-5">
<label for="disabledTextInput" class="form-label">Type</label>
<input type="text" id="custype" name="custype" class="form-control" >
</div>
<div class="mb-5">
<label for="disabledTextInput" class="form-label">Username</label>
<input type="text" id="cusuname" name="cusuname" class="form-control" >
</div>
<div class="mb-5">
<label for="disabledTextInput" class="form-label">Password</label>
<input type="text" id="cuspass" name="cuspass" class="form-control" >
</div>
</fieldset>

 <input id="updateCusBtn" type="button" class=" d-grid gap-2 col-6 mx-auto btn btn-success" role="button" value="UPDATE" />
 
 </form>
 
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