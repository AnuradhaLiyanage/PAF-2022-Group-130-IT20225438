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
				let tBody = document.getElementById("user_table_nikela");
				
				result.data.map((data)=>{
					let row = document.createElement("tr");
					row.className = "usertr";
					
					let uid = document.createElement("td");
					uid.className = "usertd";
					uid.innerHTML = data.uid;
					let name = document.createElement("td");
					name.className = "usertd";
					name.innerHTML = data.name;
					let address = document.createElement("td");
					address.className = "usertd";
					address.innerHTML = data.address;
					let accno = document.createElement("td");
					accno.className = "usertd";
					accno.innerHTML = data.accno;
					let nic = document.createElement("td");
					nic.className = "usertd";
					nic.innerHTML = data.nic;
					let email = document.createElement("td");
					email.className = "usertd";
					email.innerHTML = data.email;
					let phone = document.createElement("td");
					phone.className = "usertd";
					phone.innerHTML = data.phone;
					let type = document.createElement("td");
					type.className = "usertd";
					type.innerHTML = data.type;
					let username = document.createElement("td");
					username.className = "usertd";
					username.innerHTML = data.username;
					let password = document.createElement("td");
					password.className = "usertd";
					password.innerHTML = data.password;
					
					
					let form = document.createElement("form");
					form.action = "userUpdate.jsp";
					form.method = "POST";
					form.id = "updateform";
					//send uid for update
					let uidValue = document.createElement("input");
					uidValue.hidden = true;
					uidValue.value = data.uid;
					
					//update Button
					let updateBtn = document.createElement("input");
					updateBtn.classList.add("btn","btn-success","mb-3");
					updateBtn.value = "UPDATE";
					updateBtn.type = "button";
					updateBtn.onclick =(e)=>{
						senduidForUpdate();
					}
					
					//Delete Button
					let deleteBtn = document.createElement("input");
					deleteBtn.classList.add("btn","btn-danger");
					deleteBtn.value = "DELETE";
					deleteBtn.type = "button";
					deleteBtn.onclick =(e)=>{
						DeleteRow(data.uid);
					}
					
					
					form.appendChild(uidValue);
					form.appendChild(updateBtn);
					
					let updateForm = document.createElement("td");
					updateForm.className = "usertd";
					updateForm.appendChild(form);
					updateForm.appendChild(deleteBtn);
					
					
					row.appendChild(uid);
					row.appendChild(name);
					row.appendChild(address);
					row.appendChild(accno);
					row.appendChild(nic);
					row.appendChild(email);
					row.appendChild(phone);
					row.appendChild(type);
					row.appendChild(username);
					row.appendChild(password);
					row.appendChild(updateForm);
					
					tBody.appendChild(row);
					
					
				})
			}
			//Display error message
			else{
				alert(result.data)
			}
		}
	}
	
})
//send uid for update
function senduidForUpdate(){
	$("#updateform").submit();
}

//delete user function
function DeleteRow(uid){
	var deleteData = {uid};
	console.log(deleteData)
	$.ajax(
		{
			url:	"/PAF-2022-Group-130/UserAPI",
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