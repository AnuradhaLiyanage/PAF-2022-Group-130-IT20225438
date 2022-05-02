package models;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import database.DBConnect;

public class Payment {
	
	// get customer details and their bill amount
	public ArrayList<String> getCustomerDetails(String userID) {
		ArrayList<String> paycus = new ArrayList<>();
		try {
			// Check database connection
			Connection con = DBConnect.connect();
			
			// declare open variables
			String uid = null;
			String name = null;
			String address = null;
			String accNumber = null;
			String nic = null;
			String email = null;
			String phone = null;
			String totalpayable = null;
			
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
				accNumber = Integer.toString(crs.getInt(4)); 
				nic = crs.getString(5);
				email = crs.getString(6);
				phone = crs.getString(7);
				
			}
			
			// bill rs
			if (brs.next()) {
				totalpayable = Double.toString(brs.getDouble(1));
			}
			
			paycus.add(uid);
			paycus.add(name);
			paycus.add(address);
			paycus.add(accNumber);
			paycus.add(nic);
			paycus.add(email);
			paycus.add(phone);
			paycus.add(totalpayable);
			

			con.close();
		}
		
		catch (Exception e) {
			System.out.println("Error while fetching the customer details."); 
			System.err.println(e.getMessage());
		}
		
		return paycus;
	}
	
	// Show customer details
	public String showPaymentCusDetails(String userID) {
		String output = "";
		
		ArrayList<String> payCus = new ArrayList<String>();
		payCus = getCustomerDetails(userID);
		// demostrate List
		String uid = payCus.get(0);
		String name = payCus.get(1);
		String address = payCus.get(2);
		int accNumber = Integer.parseInt(payCus.get(3)); 
		String nic = payCus.get(4);
		String email = payCus.get(5);
		String phone = payCus.get(6);
		Double totalpayable = Double.parseDouble(payCus.get(7));
		
		try {
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
			output += "<form method='post' action='http://localhost:8080/PAF-2022-Group-130/ElectronicServices/payment/confirmbill'>"
					+ 	"<tr>"
					+ 		"<td><input type='hidden' name='uid' value="+uid+" />"
					+			"<input type='submit' value='PROCEED' />"
					+ 		"</td>"
					+ 	"</tr>"
					+ "</form>";
			
			output += "</table>";
		} catch (Exception e) {
			output = "Error while showing the customer details."; 
			System.err.println(e.getMessage());
		}
		
		return output;
	}
	
	// ----------------------------------------------------------------------------------------------------- //
	
	// retrieve last payment id for id generation 
		public static int getLastPaymentID() {
		
			String pidcount = "0";
			int pid = 0;
			String pidS = "0";
		
			// userid validate
			try {
				// Check database connection
				Connection con = DBConnect.connect();
				// get count of rows in payment table
				Statement stmt = con.createStatement();
				String sql = "select count(*) from payment";
				
				ResultSet rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					pidcount = rs.getString(1);
				}
				
				// get payment id
				String sql1 = "select PaymentID from payment where id='"+pidcount+"'";
				ResultSet rs1 = stmt.executeQuery(sql1);
				
				if(rs1.next()) {
					pidS = rs1.getString(1);
				}
				
				// convert string to int
				pid = Integer.parseInt(pidS.substring(1));
				
				} catch(Exception e) {
					e.printStackTrace();
				}
		
			return pid;
		
		}

	// insert to payment table
	public String payTheBill(String userID,String amount) {
		String output = "";
		String erroutput = "";
		
		String newPID = null;
		String gpid1;
		
		boolean isSuccess = false;
		
		try {
			// Check database connection
			Connection con = DBConnect.connect();
			if (con == null) { return "Error while connecting to the database.."; }

			// payment id for generate pid
			int PID = getLastPaymentID();
			int id = PID+1;
			
			// next payment id generation
			if (PID == 0) {
				newPID = "P001";
			} else {
				int gpid = PID+1;
				gpid1 = String.valueOf(gpid);
				if (gpid >= 10) {
					newPID = "P0"+gpid1;
				} else {
					newPID = "P00"+gpid1;
				}
			}
			
			// get common bill and customer details
			ArrayList<String> payCus = new ArrayList<String>();
			payCus = getCustomerDetails(userID);
			// demostrate List
			String curruntUid = payCus.get(0);
			String name = payCus.get(1);
			String billAddress = payCus.get(2);
			int accNumber = Integer.parseInt(payCus.get(3)); 
			String nic = payCus.get(4);
			String email = payCus.get(5);
			String phone = payCus.get(6);
			Double totalpayable = Double.parseDouble(payCus.get(7));
			String paidStats = null;
			String expDate = "2022-04-20";
			
			// generate balance
			Double cashD = Double.parseDouble(amount);
			Double balanceD = cashD - totalpayable;
			
			if (totalpayable==cashD) {
				paidStats = "Paid";
			} else if (totalpayable<cashD) {
				paidStats = "Paid";
			} else if (cashD == 0) {
				paidStats = "unpaid";
			} else {
				paidStats = "HalfPaid";
				balanceD = 0.00;
			}
			
			// Inserting to database
			Statement stmt =con.createStatement();
			String sql = "insert into payment values('"+id+"','"+newPID+"','"+curruntUid+"','"+name+"','"+accNumber+"','"+billAddress+"','"+email+"','"+phone+"','"+totalpayable+"','"+cashD+"','"+balanceD+"',"
					+ "'"+paidStats+"','"+expDate+"')";
			int result = stmt.executeUpdate(sql);
			
			if(result > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
			output = "<div align='center'>"
					+"<table border='1'>"
					+ 	"<tr>"
					+ 		"<th align='left'>Payment ID</th>"
					+ 		"<td>"+newPID+"</td>"
					+ 	"</tr>"
					+ 	"<tr>"
					+ 		"<th align='left'>Customer Name</th>"
					+ 		"<td>"+name+"</td>"
					+ 	"</tr>"
					+ 	"<tr>"
					+ 		"<th align='left'>Customer paid amount</th>"
					+ 		"<td>"+cashD+"</td>"
					+ 	"</tr>"
					+ 	"<tr>"
					+ 		"<th align='left'>Total payable amount</th>"
					+ 		"<td>"+totalpayable+"</td>"
					+ 	"</tr>"
					+ 	"<tr>"
					+ 		"<th align='left'>Balance amount</th>"
					+ 		"<td>"+balanceD+"</td>"
					+ 	"</tr>"
					+ "</table>"
					+ "</div>"
					+ "<h4 align='center'>Payment Success</h4>"
					+ "<h6 align='center'>Thank you</h6>";
			
			stmt.close();
			con.close();
			
		} catch(Exception e) {
			output = "Error while fetching the customer details and inserting payment details."; 
			System.err.println(e.getMessage());
		}
		
		if (isSuccess == false) {
			return erroutput = "Error while inserting payment details! Payment Failed!!!";
		}
		
		return output;
	}
	
	// ----------------------------------------------------------------------------------------------------- //

	// update address
	public String updatePaymentAddress(String uid, String address) {
		String output = "";
		String erroutput = "";
		
		boolean isUpdated = false;
		
		// update starting
		try {
			// check db connection
			Connection con = DBConnect.connect();
			if(con == null) { return "Error while connecting to the database.."; }
			
			Statement stmt1 = con.createStatement();
			Statement stmt2 = con.createStatement();
			
			String sql1 = "update payment set BillingAddress="+address+" where UserID="+uid+"";
			String sql2 = "update customer set Address="+address+" where UserID="+uid+"";
			
			int result1 = stmt1.executeUpdate(sql1);
			int result2 = stmt2.executeUpdate(sql2);
			
			if (result1 > 0 && result2 > 0) {
				isUpdated = true;
			} else {
				isUpdated = false;
			}
			
			output = "<h4>Payment address successfully updated!!!</h4>"
					+ "<h5>New payment address is "+address+"";
			
		} catch (Exception e) {
			output = "Error while updating payment details."; 
			System.err.println(e.getMessage());
		}
		
		if (isUpdated == false) {
			erroutput = "Error while updating details";
		}
		
		return output;
	}
	
	// ----------------------------------------------------------------------------------------------------- //
	
	// delete payment history
	public String deletePayHistory(String pid) {
		String output = "";
		
		try {
			// check db connection
			Connection con = DBConnect.connect();
			if(con == null) { return "Error while connecting to the database.."; }
			
			
			String sql = "DELETE FROM payment WHERE PaymentID=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, pid);
			int result = stmt.executeUpdate();
			
			System.out.print(result);
			
			if (result > 0) {
				output = "<h4>Payment history deleted.</h4>";
			} else {
				output = "<h4>Error while deleting payment history.</h4>";
			}

			
			
		} catch (Exception e) {
			output = "Error while deleting payment history."; 
			System.err.println(e.getMessage());
		}
		
		return output;
	}
	
	// ----------------------------------------------------------------------------------------------------- //
	
	// Paymnet History
	public String showPaymentHistory(String uid) {
		String output = "";
		
		try {
			// check db connection
			Connection con = DBConnect.connect();
			if(con == null) { return "Error while connecting to the database.."; }
			
			String sql = "select * from payment where UserID="+uid+"";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			// table start
			output = "<table border='1'>"
					+ 	"<tr>"
					+ 		"<th>Payment ID</th>"
					+ 		"<th>User ID</th>"
					+ 		"<th>Name</th>"
					+ 		"<th>Account Number</th>"
					+ 		"<th>Billing Address</th>"
					+ 		"<th>Email</th>"
					+ 		"<th>Phone</th>"
					+ 		"<th>Total</th>"
					+ 		"<th>Cash</th>"
					+ 		"<th>Balance</th>"
					+ 		"<th>Paid Status</th>"
					+ 		"<th>Expire Date</th>"
					+ 	"</tr>";
			
			Boolean rsCount = rs.next();
			
			while(rsCount) {
				
				String pid = rs.getString(2);
				String userid = rs.getString(3);
				String name = rs.getString(4);
				int accno = rs.getInt(5);
				String billaddr = rs.getString(6);
				String email = rs.getString(7);
				String phone = rs.getString(8);
				Double total = rs.getDouble(9);
				Double cash = rs.getDouble(10);
				Double balance = rs.getDouble(11);
				String status = rs.getString(12);
				String expDate = rs.getString(13);
				
				output += "<tr>"
						+ 	"<td>"+pid+"</td>"
						+ 	"<td>"+userid+"</td>"
						+ 	"<td>"+name+"</td>"
						+ 	"<td>"+accno+"</td>"
						+ 	"<td>"+billaddr+"</td>"
						+ 	"<td>"+email+"</td>"
						+ 	"<td>"+phone+"</td>"
						+ 	"<td>"+total+"</td>"
						+ 	"<td>"+cash+"</td>"
						+ 	"<td>"+balance+"</td>"
						+ 	"<td>"+status+"</td>"
						+ 	"<td>"+expDate+"</td>"
						+ "</tr>";
				
				rsCount = rs.next();
			}
			
			
			output += "</table>";

			
		} catch (Exception e) {
			output = "Error while showing payment history."; 
			System.err.println(e.getMessage());
		}
		
		return output;
	}
	

	
	
	
}
