package models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import database.DBConnect;

public class User {
//login
	public String login(String username,String password) {
		String output="";
		
		try {
			//check database connection
			Connection con=DBConnect.connect();
			if(con==null) {return "Database not connected";}
			
			//validate username and password
			Statement stmt=con.createStatement();
			String sql="SELECT * FROM customer WHERE Username='"+username+"' AND Password='"+password+"'";
			ResultSet rs=stmt.executeQuery(sql);
			
			String UID=null;
			String name=null;
			String address=null;
			int accnumber=0;
			String nic=null;
			String email=null;
			String phone=null;
			String type=null;
			String uname=null;
			String pass=null;
			
			if(rs.next()) {
				UID=rs.getString(1);
				name=rs.getString(2);
				address=rs.getString(3);
				accnumber=rs.getInt(4);
				nic=rs.getString(5);
				email=rs.getString(6);
				phone=rs.getString(7);
				type=rs.getString(8);
				uname=rs.getString(9);
				pass=rs.getString(10);
			}
			
			//html table open
			output="<table border='1'>"
					+ "<tr>"
					+ "<th>UserID</th>"
					+ "<th>Name</th>"
					+ "<th>Address</th>"
					+ "<th>Account Number</th>"
					+ "<th>National ID</th>"
					+ "<th>Email</th>"
					+ "<th>Phone Number</th>"
					+ "<th>Type</th>"
					+ "<th>Username</th>"
					+ "<th>Password</th>"
					+ "</tr>"
					+ "<tr>"
					+ "<td>"+UID+"</td>"
					+ "<td>"+name+"</td>"
					+ "<td>"+address+"</td>"
					+ "<td>"+accnumber+"</td>"
					+ "<td>"+nic+"</td>"
					+ "<td>"+email+"</td>"
					+ "<td>"+phone+"</td>"
					+ "<td>"+type+"</td>"
					+ "<td>"+uname+"</td>"
					+ "<td>"+pass+"</td>"
					+ "</tr>"
					+ "</table>";					
					
			
			
		} catch (Exception e) {
			// TODO: handle exception
		
			output="User not Registered";
			System.err.println(e.getMessage());
		}
		return output;
	}

	public String InsertUserDetails(String uid, String name, String address, int accno, String nic, String email,
			String phone, String type, String username, String password) {
		// TODO Auto-generated method stub
		String output="";
		
		try {
			//check database connection
			Connection con=DBConnect.connect();
			if(con==null) {return "Database not connected";}
			
			//Insert into  user details
			Statement stmt=con.createStatement();
			String sql="INSERT INTO customer VALUES ('"+uid+"','"+name+"','"+address+"','"+accno+"','"+nic+"','"+email+"','"+phone+"','"+type+"','"+username+"','"+password+"')";
		    int rs=stmt.executeUpdate(sql);
		    
		    if(rs>0) {
		    	output="<h4>User Details Successfully Inserted</h4>";
		    }else {
		    	output="User Details not Insert";
		    }
			
		} catch (Exception e) {
			// TODO: handle exception
			
			output="User Details not Insert";
			System.err.println(e.getMessage());
		}
		return output;
	}

	public String UpdateUserDetails(String uid, String name, String address, int accno, String nic, String email, String phone,
			String type, String username, String password) {
		// TODO Auto-generated method stub
		String output="";
		boolean  isUpdated=false;
		
		try {
			// check db connection
						Connection con = DBConnect.connect();
						if(con == null) { return "Error while connecting to the database.."; }
						
						Statement stmt1 = con.createStatement();
						
						
						String sql1 = "update customer set Name="+name+", Address="+address+", AccountNumber="+accno+", NIC="+nic+", Email="+email+", Phone="+phone+", Type="+type+", Username="+username+", password="+password+" where UserID="+uid+"";
						
						int result = stmt1.executeUpdate(sql1);
						
						if (result > 0) {
							isUpdated = true;
						} else {
							isUpdated = false;
						}
						
						output = "<h4>User Details successfully updated!!!</h4>";
							
			
		} catch (Exception e) {
			// TODO: handle exception

			output="User Details not Updated";
			System.err.println(e.getMessage());
			
		}
		
		
		return output;
	}
}
