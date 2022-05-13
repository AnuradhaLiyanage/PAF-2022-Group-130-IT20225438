/**
 Payment
 */
 
 /**
 User
 */
 
 /**
 Billing
 */
 
 
 
 /**
 Notice
 */
 $(document).ready(function()
	{
	 $("#alertSuccess").hide();
	 $("#alertError").hide();
	});
	
// SAVE ============================================
$(document).on("click", "#btnSave", function(event)
	{
	// Clear alerts---------------------
		 $("#alertSuccess").text("");
		 $("#alertSuccess").hide();
		 $("#alertError").text("");
		 $("#alertError").hide();
		// Form validation-------------------
		var status = validateItemForm();
		if (status != true)
		 {
		 $("#alertError").text(status);
		 $("#alertError").show();
		 return;
		 }
		// If valid------------------------
		 $("#formItem").submit();
	});
	
	// UPDATE==========================================
		$(document).on("click", ".btnUpdate", function(event)
		{
			 $("#id").val($(this).closest("tr").find('#hidItemIDUpdate').val());
			 $("#userID").val($(this).closest("tr").find('td:eq(0)').text());
			 $("#username").val($(this).closest("tr").find('td:eq(1)').text());
			 $("#date").val($(this).closest("tr").find('td:eq(2)').text());
			 $("#time").val($(this).closest("tr").find('td:eq(3)').text());
			 $("#type").val($(this).closest("tr").find('td:eq(4)').text());
			 $("#notice").val($(this).closest("tr").find('td:eq(5)').text());
		}); 


// REMOVE==========================================
	$(document).on("click", ".remove", function(event)
	{
	 $(this).closest(".id").remove();
	
	 $("#alertSuccess").text("Removed successfully.");
	 $("#alertSuccess").show();
	});
	
// CLIENT-MODEL=================================================================
	function validateItemForm()
	{
		// NAME
		if ($("#uid").val().trim() == "")
		 {
		 return "Insert uid.";
		 }
		 if ($("#username").val().trim() == "")
		 {
		 return "Insert username.";
		 }
		 if ($("#date").val().trim() == "")
		 {
		 return "Insert date.";
		 }
		 if ($("#time").val().trim() == "")
		 {
		 return "Insert time.";
		 }
		
		// YEAR
		if ($("#type").val() == "0")
		 {
		 return "Select type.";
		 }
		return true;
	}
	
	function getStudentCard(uid, username, date, time, type)
	{
		
		var noticeType = "";
		switch (type) {
			case "1":
			 noticeType = "1";
			 break;
			case "2":
			 noticeType = "2";
			 break;
			case "3":
			 noticeType = "3";
			 break;
			
		 }
			var notice = "";
			 notice += "<div class=\"student card bg-light m-2\" style=\"max-width: 10rem; float: left;\">";
			 notice += "<div class=\"card-body\">";
			 notice += title + " " + name + ",";
			 notice += "<br>";
			 notice += yearNumber + " year";
			 notice += "</div>";
			 notice += "<input type=\"button\" value=\"Remove\" class=\"btn btn-danger remove\">";
			 notice += "</div>";
			return notice;
	}