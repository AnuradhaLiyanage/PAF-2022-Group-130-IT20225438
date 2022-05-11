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
			$("#pfd1name").attr("value", result.data.name).show();
			$("#pfd1accnumber").attr("value", result.data.accNumber).show();
			$("#pfd1billno").attr("value", result.data.billNumber).show();
			$("#pfd1address").attr("value", result.data.address).show();
			$("#pfd1nic").attr("value", result.data.nic).show();
			$("#pfd1email").attr("value", result.data.email).show();
			$("#pfd1phone").attr("value", result.data.phone).show();
			$("#pfd1sDate").attr("value", result.data.sDate).show();
			$("#pfd1eDate").attr("value", result.data.eDate).show();
			$("#pfd1units").attr("value", result.data.units).show();
			
			let totalpayable = parseFloat(result.data.totalpayable);
			let units = parseInt(result.data.units);
			$("#pfd1totalpayable").attr("value", totalpayable.toFixed(2)).show();
			
			// calc ppu
			let ppu = totalpayable/units;
			
			$("#pfd1ppu").attr("value", ppu.toFixed(2)).show();
		}
	} else if(status == "error") {
		alert("Error")
	} else {
		alert("Other")
	}
}	
})
