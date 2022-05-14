<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="../../Views/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../../Views/notice.css" />
<script src="../../Components/jquery-3.2.1.min.js"></script>
<script src="../../Components/main.js"></script>
<title>Insert title here</title>

	<style>
      #intro {
        background-image: url("https://mdbootstrap.com/img/new/fluid/city/018.jpg");
        height: 125vh;
      } 
      
    </style>
    
</head>
<body>
  <div id="intro">
	
	
<div class="container">
<br>  


<div class="card bg-light">
<article class="card-body mx-auto" style="width: 600px;">
	
	
	<form>
	<h1 class=" d-flex justify-content-center mb-3"" >Notice Details</h1>
    <hr>
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="" class="form-control" id="noticeuid" placeholder="Enter User ID" type="text">
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="" class="form-control" id="noticeusername" placeholder="Enter Username" type="text">
    </div> 
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="" class="form-control" id="noticedate" placeholder="Enter Date" type="date">
    </div> 
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="" class="form-control" id="noticetime" placeholder="Enter Time" type="time">
    </div> 
     
    
     <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-building"></i> </span>
		</div>
		<select class="form-control" id="noticetype">
			<option value="0">--Select Notice Type--</option>
			 <option value="1">Payment Details</option>
			 <option value="2">Bill Details</option>
			 <option value="3">Red Bills</option>
		</select>
	</div>  
	 <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        
        <textarea class="form-control" placeholder="Write notice details description..." rows="5" id="noticemsg" name="text"></textarea>
    </div>                                      
    <div class="form-group">
        <button type="submit" id="noticebtnSave" class="btn btn-primary btn-block"> Submit  </button>
        <input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
    </div> <!-- form-group// -->      
                                                                   
</form>
</article>
</div> <!-- card.// -->

</div> 
<!--container end.//-->
</div>

	
	
 </form>
 </div>
 </div>
 </div>
 </div>
 </div>
 </div>
 </div>
 </section>


 <br>
 <div class="row">
 <div class="col-12" id="colStudents">

 </div>
 </div>
</div>
</body>
</html>