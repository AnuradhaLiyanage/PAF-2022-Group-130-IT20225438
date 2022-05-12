<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../../Views/user.css" />
<script src="../../Components/jquery-3.2.1.min.js"></script>
<script src="../../Components/main.js"></script>
<title>UserView</title>
</head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<body>
<h1 class="mb-3 d-flex justify-content-center" > Customer Details</h1>
<div class=container>
<table >
  <tr>
    <th>UserID</th>
    <th>Name</th>
    <th>Address</th>
    <th>Account Number</th>
    <th>NIC</th>
    <th>Email</th>
    <th>Phone Number</th>
    <th>Type</th>
    <th>UserName</th>
    <th>Password</th>
    <th>Action</th>
    
  </tr>
  <tr>
    <td>1</td>
    <td>Alfreds Futterkiste</td>
    <td>Maria Anders</td>
    <td>785394648</td>
    <td>6758965v</td>
    <td>nimal@gmail.com</td>
    <td>54789345</td>
    <td>user</td>
    <td>Germany</td>
    <td>nimal@12</td>
    
    
    <td>
    <a href="../user/userUpdate.jsp" class=" btn btn-success" role="button">Update</a>
    <button type="submit" class="btn btn-danger" id="remove">Delete</button>
   
    </td>
  </tr>

</table>
</div>



</body>
</html>