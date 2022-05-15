<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../../Views/billing.css" />
<script src="../../Components/jquery-3.2.1.min.js"></script>
<script src="../../Components/main.js"></script>
<title>Billing Details Update</title>
<style>
#intro {
background-image: url("https://www.europarl.europa.eu/resources/library/images/20171115PHT88108/20171115PHT88108-pl.jpg");
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
<h2>Billing Details</h2><br>
<div class="container">
<form>
<fieldset >
<div class="mb-3">
<label for="disabledTextInput" class="form-label">UserID</label>
<input type="text" id="disabledTextInput" class="form-control" >
</div>
<div class="mb-3">
<label for="disabledTextInput" class="form-label">Name</label>
<input type="text" id="disabledTextInput" class="form-control" >
</div>
<div class="mb-3">
<label for="disabledTextInput" class="form-label">Start Date</label>
<input type="text" id="disabledTextInput" class="form-control" >
</div>
<div class="mb-3">
<label for="disabledTextInput" class="form-label">End Date</label>
<input type="text" id="disabledTextInput" class="form-control" >
</div>
<div class="mb-3">
<label for="disabledTextInput" class="form-label">Account Number</label>
<input type="text" id="disabledTextInput" class="form-control" >
</div>
<div class="mb-3">
<label for="disabledTextInput" class="form-label">Bill Number</label>
<input type="text" id="disabledTextInput" class="form-control" >
</div>
<div class="mb-5">
<label for="disabledTextInput" class="form-label">Unit</label>
<input type="text" id="disabledTextInput" class="form-control" >
</div>
<div class="mb-5">
<label for="disabledTextInput" class="form-label">Amount</label>
<input type="text" id="disabledTextInput" class="form-control" >
</div>
</fieldset>
  <button type="submit" class="d-grid gap-2 col-6 mx-auto btn btn-success" id="btnUpdate">Update</button><br><br>

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