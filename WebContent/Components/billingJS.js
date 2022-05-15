/**  */
 $(document).ready(function()
	{
	 $("#alertSuccess").hide();
	 $("#alertError").hide();
	 
	 // viewing single bill for update
	 if($("#page").val() === "viewsinglebill") {
		
			$.ajax(
			{
				url: "/PAF-2022-Group-130/BillingAPI",
				type: "POST",
				data: $("#sendBillID").serialize(),
				dataType: "text",
				complete: function(response,status)
				{
					if(status == "success") {
						var result = JSON.parse(response.responseText);
						if(result.status == "success") {
							console.log(result.data)
							billinguserid.value = result.data.uid;
							billingname.value = result.data.name;
							billingsdate.value = result.data.sdate;
							billingedate.value = result.data.edate;
							billingaccno.value = result.data.accno;
							billingbillno.value = result.data.billnum;
							billingunit.value = result.data.units;
							billingamount.value = result.data.billamount;
						}
					}
				}
			}
			
		)		
	}
	
		
$(document).ready(function(){
	
	 if($("#page").val() === "viewallbills") {
		
		$.ajax(
			{
				url: "/PAF-2022-Group-130/BillingAPI",
				type:	"GET",
				dataType:	"text",
				complete:	function(response,status){
					onBillingLoaded(response.responseText,status);
				}
			}
		)
		
	}
	
		//function for get all billing details
function onBillingLoaded(response, status) {
	var result = JSON.parse(response)
	let tbody = document.getElementById('user_table_billing');
	
	result.data.map((data)=> {
		console.log(data);
		let row = document.createElement('tr') ;
		row.className = "billingtr";
		
		
		let userid = document.createElement('td');
		userid.className = "billingtd";
		userid.innerHTML = data.userid;
		let name = document.createElement('td');
		name.className = "billingtd";
		name.innerHTML = data.name;
		let startdate = document.createElement('td');
		startdate.className = "billingtd";
		startdate.innerHTML = data.startdate;
		let enddate = document.createElement('td');
		enddate.className = "billingtd";
		enddate.innerHTML = data.enddate;
		let accno = document.createElement('td');
		accno.className = "billingtd";
		accno.innerHTML = data.accno;
		let billno = document.createElement('td');
		billno.className = "billingtd";
		billno.innerHTML = data.billno;
		let noofunits = document.createElement('td');
		noofunits.className = "billingtd";
		noofunits.innerHTML = data.noofunits;
		let billamount = document.createElement('td');
		billamount.className = "billingtd";
		billamount.innerHTML = data.billamount;
		
		let form = document.createElement("form");
			form.action = "billingupdate.jsp";
			form.method = "POST";
			form.id = "updateform";

					
			//update Button
			let updateBtn = document.createElement("input");
			updateBtn.classList.add("btn","btn-success","mb-3");
			updateBtn.value = "UPDATE";
			updateBtn.type = "button";
			updateBtn.onclick =(e)=>{
				senduidForUpdate(data.accno);
			}
			
			//Delete Button
			let deleteBtn = document.createElement("input");
			deleteBtn.classList.add("btn","btn-danger");
			deleteBtn.value = "DELETE";
			deleteBtn.type = "button";
			deleteBtn.onclick =(e)=>{
				DeleteRow(data.accno);
			}
			
			
			//form.appendChild(uidValue);
			form.appendChild(updateBtn);
			
			let updateForm = document.createElement("td");
			updateForm.className = "billingtd";
			updateForm.appendChild(form);
			updateForm.appendChild(deleteBtn);

			
		
		row.appendChild(userid);	
		row.appendChild(name);
		row.appendChild(startdate);
		row.appendChild(enddate);
		row.appendChild(accno);
		row.appendChild(billno);
		row.appendChild(noofunits);
		row.appendChild(billamount);
		row.appendChild(updateForm);
		
		
		
		tbody.appendChild(row);
		
		
	})
}
		
});
	
//send uid for update
function senduidForUpdate(accNo){
	
	//send uid for update
	let uidValue = document.createElement("input");
	uidValue.hidden = true;
	uidValue.id = "uidvalue"
	uidValue.name = "accnotobeupdate"
	uidValue.value = accNo;
	
	let form = document.getElementById("updateform");
	
	form.appendChild(uidValue)

	$("#updateform").submit();
}

	
//delete user function
function DeleteRow(accno){
	var deleteData = {accno};
	console.log(deleteData)
	$.ajax(
		{
			url:	"/PAF-2022-Group-130/BillingAPI",
			type:	"DELETE",
			data:	JSON.stringify(deleteData),
			dataType:	"json",
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

// update
$(document).ready( ()=> {
	
	$("#btnUpdate").click(function() {
		let name = $("#billingname").val();
		let sdate = $("#billingsdate").val();
		let edate = $("#billingedate").val();
		let accno = $("#billingaccno").val();
		let billunit = $("#billingunit").val();
		let billamount = $("#billingamount").val();
		
		var updateSet = {  name, sdate, edate, accno, billunit, billamount }
		
		$.ajax(
			{
				url: "/PAF-2022-Group-130/BillingAPI",
				type:	"PUT",
				data:	JSON.stringify(updateSet),
				dataType: "json",
				complete: function(response, status) {
					onUpdateComplete(response.responseText, status);
				}
			}
		)
		
		// when updated
		function onUpdateComplete(responseText, status) {
			console.log(responseText)
			if(status == "success") {
				var result = JSON.parse(responseText);
				
				if(result.status == "success") {
					alert(result.data)
					window.location.reload();
				} else {
					alert(result.data)
				}
			}
		}
		
	})

})


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
	
	
})	
	
	
