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
<script src="../../Components/noticeJS.js"></script>
<title>Insert title here</title>
<style>
      #intro {
        background-image: url("https://mdbootstrap.com/img/new/fluid/city/018.jpg");
        height: 100%;
      } 
    </style>
</head>
<body>
	<div id="intro">
	
	<%String uidtobeup = request.getParameter("uidtobeupdate"); %>
	<form id="sendNoticeID">
	<input type="hidden" name="findpage" id="findpage" value="singlenoticedetails" />
	<input type="hidden" name="noticeUserid" id="noticeUserid" value=<%=uidtobeup%>>
	<input type="hidden" name="findpage1" id="findpage1" value="noticeUpdate">
		
	</form>
	
	<div class="container">
	<div class="d-flex justify-content-center" >
		<div class="col col-xl-10" >
		<div class="card" style="border-radius: 1rem;" >
		<div class="row g-3 p-5 " >
		<div class="card-body p-4 p-lg-5 text-black">
  <h2>Customer Notice Details</h2><br>
  <div class="container">        
	<form>
  <fieldset >
    
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">ID</label>
      <input type="text" id="nuid" class="form-control" readonly = "readonly" >
    </div>
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">UID</label>
      <input type="text" id="nuuid" class="form-control" value ="<%=uidtobeup%>" readonly="readonly">
    </div>
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Username</label>
      <input type="text" id="nusername" class="form-control" >
    </div>
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Date</label>
      <input type="text" id="nudate" class="form-control" >
    </div>
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Time</label>
      <input type="text" id="nutime" class="form-control" >
    </div>
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Notice Type</label>
      <input type="text" id="nutype" class="form-control" >
    </div>
    <div class="mb-5">
      <label for="disabledTextInput" class="form-label">Notice</label>
      <input type="text" id="nunotice" class="form-control" >
    </div>
    
    
    
  </fieldset>
  <button type="button" class="d-grid gap-2 col-6 mx-auto btn btn-success" id="btnnoticeUpdate">Update</button><br><br>

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