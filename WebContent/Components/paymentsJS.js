// on load page and ready to view
$(document).ready(function() {
	$.ajax(
		{
			url:	"/PAF-2022-Group-130/PaymentAPI",
			type:	"POST",
			data:	$("#billBeforePay").serialize(),
			dataType:	"text",
			complete:	function(response, status) {
				onComplete(response.responseText, status);
			}
		}
	)
	
	function onComplete(response, status) {

	if(status == "success") {
		var result = JSON.parse(response);
		if(result.status.trim() == "success") {
			console.log(result)
			$("#name").attr("value", result.data.name).show();
			$("#accnumber").attr("value", result.data.accNumber).show();
			$("#address").attr("value", result.data.address).show();
			$("#nic").attr("value", result.data.nic).show();
			$("#email").attr("value", result.data.email).show();
			$("#phone").attr("value", result.data.phone).show();
			
			let totalpayable = parseFloat(result.data.totalpayable)
			
			$("#totalpayable").attr("value", totalpayable.toFixed(2)).show();
		}
	} else if(status == "error") {
		alert("Error")
	} else {
		alert("Other")
	}
}	
})
