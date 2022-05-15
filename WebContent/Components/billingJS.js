/**  */
 $(document).ready(function()
	{
	 $("#alertSuccess").hide();
	 $("#alertError").hide();
	 
	 $.ajax(
		{
			url: "/PAF-2022-Group-130/BillingAPI",
			type: "POST",
			data: $("#sendAccountNumber").serialize(),
			dataType: "text",
			complete: function(response,status)
			{
				//onComplete(response.responseText,status)
			}
		}
		
	)
	
		
$(document).ready(function(){
	
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
	uidValue.name = "uidtobeupdate"
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
	
	$("#btnnoticeUpdate").click(function() {
		let userID = $("#billinguserid").val();
		let name = $("#billingname").val();
		let sdate = $("#billingsdate").val();
		let edate = $("#billingedate").val();
		let accno = $("#billingaccno").val();
		let billno = $("#billingbillno").val();
		let billunit = $("#billingunit").val();
		let billamount = $("#billingamount").val();
		
		var updateSet = { userID, name, sdate, edate, accno, billno, billunit, billamount }
		
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
	let billinguid = document.getElementById("billinguid");
	let billingusername = document.getElementById("billingusername");
	let billingstartdate = document.getElementById("billingstartdate");
	let billingenddate = document.getElementById("billingenddate");
	let billingaccountnumber = document.getElementById("billingaccountnumber");
	let billingbill = document.getElementById("billingbill");
	let billingamount = document.getElementById("billingamount");
	
	// payment method form validations
	if(billinguid.value === "") {
		$("#pmethoderror").text("Enter User ID").show();
		billinguid.classList.add("pmf")
		billinguid.focus();
	}
	else if(billingusername.value === "") {
		billinguid.classList.remove("pmf")
		billingusername.classList.add("pmf")
		billingusername.focus();
		$("#pmethoderror").text("Enter User Name").show();
	}
	else if(billingstartdate.value === "") {
		billingusername.classList.remove("pmf")
		billingstartdate.classList.add("pmf")
		billingstartdate.focus();
		$("#pmethoderror").text("Enter Date").show();
	}
	else if(billingenddate.value === "") {
		billingstartdate.classList.remove("pmf")
		billingenddate.classList.add("pmf")
		billingenddate.focus();
		$("#pmethoderror").text("Enter Time").show();
	}
	else if(billingaccountnumber.value === "") {
		billingenddate.classList.remove("pmf")
		billingaccountnumber.classList.add("pmf")
		billingaccountnumber.focus();
		$("#pmethoderror").text("Enter Notice Type").show();
	}
	else if(billingbill.value === "") {
		billingaccountnumber.classList.remove("pmf")
		billingbill.classList.add("pmf")
		billingbill.focus();
		$("#pmethoderror").text("Enter Time").show();
	}
	else if(billingamount.value === "") {
		billingbill.classList.remove("pmf")
		billingamount.classList.add("pmf")
		billingamount.focus();
		$("#pmethoderror").text("Enter Time").show();
	}
	else {

		// no errors
		noticemsg.classList.remove("pmf")
		$("#error").hide();
		
		// data inserting
		$.ajax(
			{
				url: "/PAF-2022-Group-130/BillingAPI",
				type: "POST",
				data: $("#insertBills").serialize(),
				dataType: "text",
				complete: function(response, status) {
					onInsertComplete(response.responseText, status);
				}
			}
		)
		
		// when insert request complete
		function onInsertComplete(responseText, status) {
			if(status == "success") {
				var result = JSON.parse(responseText);
				if (result.status == "success") {
					alert(result.data);
					window.location = "../../";
				} else {
					alert(result.data);
				}
			}
		}	
			
	}
	
})
	
	
})	
	
	
