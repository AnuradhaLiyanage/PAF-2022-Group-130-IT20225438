package models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import database.DBConnect;

public class Payment {
	
	// get customer details and their bill amount
	public String getCustomerDetails(String userID) {
		String output = "";
		try {
			// Check database connection
			Connection con = DBConnect.connect();
			if (con == null) { return "Error while connecting to the database.."; }
			
			// declare open variables
			String uid = null;
			String name = null;
			String address = null;
			int accNumber = 0;
			String nic = null;
			String email = null;
			String phone = null;
			String type;
			String uname;
			String pass;
			Double totalpayable = null;
			
			// get details queries and statements
			Statement stmtc = con.createStatement();
			Statement stmtb = con.createStatement();
			String CusD = "select * from customer where UserID='"+userID+"'";
			String BillD = "select BillAmount from billing where UserID='"+userID+"'";
			ResultSet crs = stmtc.executeQuery(CusD);
			ResultSet brs = stmtb.executeQuery(BillD);
			
			// customer rs
			if(crs.next()) {
				uid = crs.getString(1);
				name = crs.getString(2);
				address = crs.getString(3);
				accNumber = crs.getInt(4);
				nic = crs.getString(5);
				email = crs.getString(6);
				phone = crs.getString(7);
				type = crs.getString(8);
				uname = crs.getString(9);
				pass = crs.getString(10);
				
			}
			
			// bill rs
			if (brs.next()) {
				totalpayable = brs.getDouble(1);
			}
			
			// prepare view table
			output = "<table>"
					+ 	"<tr>"
					+ 		"<th align='left'>Name</th><td>"+name+"</td>"
					+ 	"</tr>"
					+ 	"<tr>"
					+ 		"<th align='left'>Address</th><td>"+address+"</td>"
					+	 "</tr>"
					+ 	"<tr>"
					+ 		"<th align='left'>Account Number</th><td>"+accNumber+"</td>"
					+	 "</tr>"
					+ 	"<tr>"
					+ 		"<th align='left'>National ID</th><td>"+nic+"</td>"
					+	 "</tr>"
					+ 	"<tr>"
					+ 		"<th align='left'>Email</th><td>"+email+"</td>"
					+	 "</tr>"
					+ 	"<tr>"
					+ 		"<th align='left'>Phone</th><td>"+phone+"</td>"
					+	 "</tr>"
					+ 	"<tr>"
					+ 		"<th align='left'>Total Payable</th><td>"+totalpayable+"</td>"
					+	 "</tr>";
			
			// buttons
			output += "<form method='post' action='index.jsp'>"
					+ 	"<tr>"
					+ 		"<td><input type='hidden' name='uid' value="+uid+" />"
					+			"<input type='submit' value='PROCEED' />"
					+ 		"</td>"
					+ 	"</tr>"
					+ "</form>";
			
			output += "</table>";
			
			// html table complete
			con.close();
		}
		
		catch (Exception e) {
			output = "Error while fetching the customer details."; 
			System.err.println(e.getMessage());
		}
		
		return output;
	}
	
	// ----------------------------------------------------------------------------------------------------- //
	
	
	
}
