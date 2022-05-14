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
// update billing address
$(document).on("click", "#sendidtoupdate", (e) => {
	if($("#puid2").val().trim() == "") {
		alert("Enter the User ID");
	} else if($("#pbillingAddress").val().trim() == "") {
		alert("Enter the billing Address to be update");
	} else {
		
		let uid = $("#puid2").val();
		let address = $("#pbillingAddress").val();
		let paymentfuncpages = "updatebillingaddress";
		
		let dataset = {uid, address, paymentfuncpages};
		console.log(dataset)
		
		$.ajax(
			{
				url: "/PAF-2022-Group-130/PaymentAPI",
				type: "PUT",
				data: JSON.stringify(dataset),
				dataType: "json",
				complete: function(response, status) {
					updateBillingAddress(response.responseText, status);
				}
			}
		)
	}
	
	function updateBillingAddress(responseText, status) {
		console.log(status);
		if(status == "success") {
			var result = JSON.parse(responseText);
			console.log(result);
		}
	}
	
})


 
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
 