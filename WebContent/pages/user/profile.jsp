<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<script src="../../Components/jquery-3.6.0.min.js"></script>
<script src="../../Components/main.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form id="parseID" action="../payment/billbeforepayment.jsp" method="post">
		<input id="puid" type="text" name="puid" />
		<input type="button" name="sendID" id="sendID" value="PAYMENT" />
	</form>
	
	<form id="parseID1" action="../payment/paymentHistory.jsp" method="post">
		<input id="puid1" type="text" name="puid" />
		<input type="button" name="sendIDtoHistory" id="sendIDtoHistory" value="History" />
	</form>
	
</body>
</html>