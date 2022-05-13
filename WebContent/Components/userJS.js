//Get All user Details
$(document).ready(function(){
	$.ajax(
		{
			url:	"/PAF-2022-Group-130/UserAPI",
			type:	"GET",
			dataType:	"text",
			complete:	function(response,status){
				OnComplete(response.responseText,status);
			}
		}
	)
	
	function OnComplete(response,status) {
		if(status == "success"){
			var result = JSON.parse(response);
			if(result.status.trim()== "success"){
				console.log (result)
			}
			else{
				alert(result.data)
			}
		}
	}
	
})