/**
 Payment
 */
// send the user id from profile to billbeforepay
$(document).on("click","#sendID",function(event) {
	if($("#puid").val().trim() != "") {
	
		$("#parseID").submit();
	
	} else {
		alert("Enter the User ID")
	}
		
});
// send the user id from profile to paymentHistory
$(document).on("click","#sendIDtoHistory",function(event) {
	if($("#puid1").val().trim() != "") {
	
		$("#parseID1").submit();
	
	} else {
		alert("Enter the User ID")
	}
		
});


 
 /**
 User
 */
 
 /**
 Billing
 */
 
 /**
 Notice */
 // send the user id from profile to billbeforepay
$(document).on("click","#noticeID",function(event) {
	if($("#noticeUserid").val().trim() != "") {
	
		$("#noticeFormID").submit();
	
	} else {
		alert("Enter the User ID")
	}
		
});
 