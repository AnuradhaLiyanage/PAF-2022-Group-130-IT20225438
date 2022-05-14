/**
 Notice
 */
 $(document).ready(function()
	{
	 $("#alertSuccess").hide();
	 $("#alertError").hide();
	 
	 $.ajax(
		{
			url: "/PAF-2022-Group-130/NoticeAPI",
			type: "POST",
			data: $("#sendNoticeID").serialize(),
			dataType: "text",
			complete: function(response,status)
			{
				onComplete(response.responseText,status)
			}
		}
		
	)
	
		function onComplete(responseText,status){
			if(status == "success"){
				console.log(responseText)
				var result = JSON.parse(responseText)
				if(result.status == "success"){
					console.log(result.data)
					$("#usernoticeid").attr("value", result.data.userid).show();
					$("#noticeusername").attr("value", result.data.username).show();
					$("#noticedate").attr("value", result.data.date).show();
					$("#noticetime").attr("value", result.data.time).show();
					$("#noticetype").attr("value", result.data.type).show();
					$("#noticeid").attr("value", result.data.notice).show();
	  
				}
			}
		}
		
		//function for get all notices details
function onNoticeLoaded(response, status) {
	var result = JSON.parse(response)
	let tbody = document.getElementById('user_table_notice');
	
	result.data.map((data)=> {
		console.log(data);
		let row = document.createElement('tr') ;
		row.className = "noticetr";
		
		let id = document.createElement('td');
		id.className = "noticetd";
		id.innerHTML = data.id;
		let userid = document.createElement('td');
		userid.className = "noticetd";
		userid.innerHTML = data.userid;
		let username = document.createElement('td');
		username.className = "noticetd";
		username.innerHTML = data.username;
		let date = document.createElement('td');
		date.className = "noticetd";
		date.innerHTML = data.date;
		let time = document.createElement('td');
		time.className = "noticetd";
		time.innerHTML = data.time;
		let type = document.createElement('td');
		type.className = "noticetd";
		type.innerHTML = data.type;
		let notice = document.createElement('td');
		notice.className = "noticetd";
		notice.innerHTML = data.notice;
		
			
		
		row.appendChild(id);	
		row.appendChild(uid);
		row.appendChild(userid);
		row.appendChild(username);
		row.appendChild(date);
		row.appendChild(time);
		row.appendChild(type);
		row.appendChild(notice);
		
		
		tbody.appendChild(row);
		
		
	})
}
		
});
	
//send uid for update
function senduidForUpdate(){
	$("#updateform").submit();
}

	
//delete user function
function DeleteRow(id){
	var deleteData = {id};
	console.log(deleteData)
	$.ajax(
		{
			url:	"/PAF-2022-Group-130/NoticeAPI",
			type:	"POST",
			data:	deleteData,
			dataType:	"JSON",
			complete:	function(response,status){
				OnDelete(response.responseText,status);
			}
		}
			
	)
	function OnDelete(responseText,status){
		
		
			alert ("successfull deleted!!!")
			window.location.reload();
	
	}
}


//function for button make a payment
$("#noticebtnSave").click(function() {
	let noticeuid = document.getElementById("noticeuid");
	let noticeusername = document.getElementById("noticeusername");
	let noticedate = document.getElementById("noticedate");
	let noticetime = document.getElementById("noticetime");
	let noticetype = document.getElementById("noticetype");
	let noticemsg = document.getElementById("noticemsg");
	
	// payment method form validations
	if(noticeuid.value === "") {
		$("#pmethoderror").text("Enter User ID").show();
		noticeuid.classList.add("pmf")
		noticeuid.focus();
	}
	else if(noticeusername.value === "") {
		noticeuid.classList.remove("pmf")
		noticeusername.classList.add("pmf")
		noticeusername.focus();
		$("#pmethoderror").text("Enter User Name").show();
	}
	else if(noticedate.value === "") {
		noticeusername.classList.remove("pmf")
		noticedate.classList.add("pmf")
		noticedate.focus();
		$("#pmethoderror").text("Enter Date").show();
	}
	else if(noticetime.value === "") {
		noticedate.classList.remove("pmf")
		noticetime.classList.add("pmf")
		noticetime.focus();
		$("#pmethoderror").text("Enter Time").show();
	}
	else if(noticetype.value === "") {
		noticetype.classList.add("pmf")
		noticetype.focus();
		$("#pmethoderror").text("Enter Notice Type").show();
	}
	else if(noticemsg.value === "") {
		noticetype.classList.remove("pmf")
		noticemsg.classList.add("pmf")
		noticemsg.focus();
		$("#pmethoderror").text("Enter Notice Description").show();
	}
	else if(pcardexpDate.value.length === 5) {

			if(pcardexpDate.value.charAt(0) != "0" && pcardexpDate.value.charAt(0) != "1") {
				pcardexpDate.focus();
				$("#pmethoderror").text("Wrong month").show();
			}
			else{
				if(pcardexpDate.value.charAt(0) === "1" && pcardexpDate.value.charAt(1) > "2") {
					pcardexpDate.focus();
					$("#pmethoderror").text("Wrong month").show();
				}
				else{
					if(pcardexpDate.value.charAt(3) <"2" || pcardexpDate.value.charAt(4) <"2") {
						pcardexpDate.focus();
						$("#pmethoderror").text("Wrong year").show();
					}
					else {
						pcardexpDate.classList.remove("pmf")
						$("#pmethoderror").hide();
						// show saving loader
						$("#loaderBG").show();
						// get values by id
						let uid = $("#noticeuid").val();
						let cardusername = $("#noticeusername").val();
						let carddate = $("#noticedate").val();
						let cardtime = $("#noticetime").val();
						let cardtype = $("#noticetype").val();
						let cardnotice = $("#noticemsg").val();
						let insert = "insert";
						
						var dataset = { uid, cardusername, carddate, cardtime, cardtype, cardnotice, insert };
						
						$.ajax(
							{
								url:	"/PAF-2022-Group-130/NoticeAPI",
								type:	"POST",
								data:	dataset,
								dataType:	"JSON",
								complete:	function(response, status) {
									onInsertComplete(response.responseText, status);
								}
							}
						)
						
						function onInsertComplete(response, status) {
							if(status === "success") {
								var result = JSON.parse(response);
								console.log(result);
								if(result.status.trim() === "success") {
									setTimeout(() => {
										// hide saving loader after few seconds
										
										$("#loader").hide();
										$("#payment-accept").show();
									
									  // 👇️ hides element (still takes up space on page)
									  // box.style.visibility = 'hidden';
									}, 2000); // 👈️ time in milliseconds
									
									// redirecting to home page after payment success;
									setTimeout(() => {
										// hide saving loader after few seconds
										
										window.location = "../../";
									
									  // 👇️ hides element (still takes up space on page)
									  // box.style.visibility = 'hidden';
									}, 2500); // 👈️ time in milliseconds

								}
								
								else {
									// payment unsuccess
								}
							}
						}
					}
				}
			}
			
	}
	
})
	
	
	
	
	
