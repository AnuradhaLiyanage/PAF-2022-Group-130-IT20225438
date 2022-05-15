<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../../Views/notices.css" />
<script src="../../Components/jquery-3.6.0.min.js"></script>
<script src="../../Components/main.js"></script>
<script src="../../Components/noticeJS.js"></script>
<title>Notices_View</title>
</head>
<style>
.usertable  {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

.noticetd {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

.usertr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<body>
<h1 class="mb-3 d-flex justify-content-center" > Notice Details</h1>
	<div class=container>
	<table class= "usertable">
	  <tr class="noticetr">
	  <th class="noticetd">ID</th>
	    <th class="noticetd">UserID</th>
	    <th class="noticetd">Username</th>
	    <th class="noticetd">Date</th>
	    <th class="noticetd">Time</th>
	    <th class="noticetd">Type</th>
	    <th class="noticetd">Notice</th>
	    <th class="noticetd">Action</th>
	    
	  </tr>
	  <tbody id="user_table_notice"></tbody>
	  
	<!--    
	    <td class="usertd">
	    <a href="../user/userUpdate.jsp" class=" btn btn-success" role="button">Update</a>
	    <button type="submit" class="btn btn-danger" id="remove">Delete</button>
	   
	    </td>
	    -->  
	 
	
	</table>
	</div>



</body>
</html>