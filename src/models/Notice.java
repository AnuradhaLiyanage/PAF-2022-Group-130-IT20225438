package models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import database.DBConnect;

public class Notice {
	
	//get notice details
	
	public String noticeDetails(String Userid) {
	String output="";

	try {
	//check database connection
	Connection con=DBConnect.connect();
	if(con==null) {return "Database not connected";}

	//validate username and password
	Statement stmt=con.createStatement();
	String sql="SELECT * FROM notices WHERE UserID='"+Userid+"'";
	ResultSet rs=stmt.executeQuery(sql);

	int ID=0;
	String UserID=null;
	String userName=null;
	String Date=null;
	String Time=null;
	String Type=null;
	String Notice=null;

	if(rs.next()) {
		ID=rs.getInt(1);
		UserID=rs.getString(2);
		userName=rs.getString(3);
		Date=rs.getString(4);
		Time=rs.getString(5);
		Type=rs.getString(6);
		Notice=rs.getString(7);
	}

	//html table open
	output="<table border='1'>"
	+ "<tr>"
	+ "<th>ID</th>"
	+ "<th>UserID</th>"
	+ "<th>userName</th>"
	+ "<th>Date</th>"
	+ "<th>Time</th>"
	+ "<th>Type</th>"
	+ "<th>Notice</th>"
	+ "</tr>"
	+ "<tr>"
	+ "<td>"+ID+"</td>"
	+ "<td>"+UserID+"</td>"
	+ "<td>"+userName+"</td>"
	+ "<td>"+Date+"</td>"
	+ "<td>"+Time+"</td>"
	+ "<td>"+Type+"</td>"
	+ "<td>"+Notice+"</td>"
	+ "</tr>"
	+ "</table>";



	} catch (Exception e) {
	// TODO: handle exception

	output="User not Registered";
	System.err.println(e.getMessage());
	}
	return output;
	}

	public String InsertNotice(String uid, String username, String date, String time, String type, String notice) {
		// TODO Auto-generated method stub
		String output="";
		try {
			//check database connection
			Connection con=DBConnect.connect();
			if(con==null) {return "Database not connected";}

			//Insert notices
			Statement stmt=con.createStatement();
			String sql="INSERT INTO notices VALUES(0,'"+uid+"','"+username+"', '"+date+"', '"+time+"', '"+type+"', '"+notice+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				output="<h4>Notice Details Successfully Inserted!</h4>";
			} else {
				output="<h4>Notice Details Not Inserted!</h4>";
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			output="Notice Details Not Inserted!";
			System.err.println(e.getMessage());
		}
		return output;
	}

	public String Updatenotices(String uid, String username, String date, String time, String type, String notice) {
		// TODO Auto-generated method stub
		String output="";
		try {
			//check database connection
			Connection con=DBConnect.connect();
			if(con==null) {return "Database not connected";}

			//Insert notices
			Statement stmt=con.createStatement();
			String sql="INSERT INTO notices VALUES(0,'"+uid+"','"+username+"', '"+date+"', '"+time+"', '"+type+"', '"+notice+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				output="<h4>Notice Details Updated Successfully!</h4>";
			} else {
				output="<h4>Notice Details Not Updated!</h4>";
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			output="Notice Details Not Updated!";
			System.err.println(e.getMessage());
		}
		return output;
		
	}
	
	// update notices
		public String updateNotice(int id, String userid, String username, String date, String time, String type, String notice) {
			String output = "";
			String erroutput = "";
			
			boolean isUpdated = false;
			
			// update starting
			try {
				// check db connection
				Connection con = DBConnect.connect();
				if(con == null) { return "Error while connecting to the database.."; }
				
				Statement stmt = con.createStatement();
				
				String sql = "update notices set UserID='"+userid+"', userName='"+username+"', Date='"+date+"', Time='"+time+"', Type='"+type+"', Notice='"+notice+"' where ID="+id+"";
				System.out.println("id " + id + "uid " + userid);
				int result = stmt.executeUpdate(sql);
				
				if (result > 0) {
					isUpdated = true;
				} else {
					isUpdated = false;
				}
				
				output = "<h4>Notice details successfully updated!!!</h4>";
				
			} catch (Exception e) {
				output="Notice Details Not Updated!";
				System.err.println(e.getMessage());
			}
			
			if (isUpdated == false) {
				erroutput = "Error while updating details";
			}
			
			return output;
		}
		
		// update notices
				public String deleteNotice(int id) {
					String output = "";
					String erroutput = "";
					
					boolean isDeleted = false;
					
					// update starting
					try {
						// check db connection
						Connection con = DBConnect.connect();
						if(con == null) { return "Error while connecting to the database.."; }
						
						Statement stmt = con.createStatement();
						
						String sql = "delete from notices where ID="+id+"";
						System.out.println("id " + id );
						int result = stmt.executeUpdate(sql);
						
						if (result > 0) {
							isDeleted = true;
						} else {
							isDeleted = false;
						}
						
						output = "<h4>Notice details successfully deleted!!!</h4>";
						
					} catch (Exception e) {
						output="Notice Details Not Deleted!";
						System.err.println(e.getMessage());
					}
					
					if (isDeleted == false) {
						erroutput = "Error while deleting details";
					}
					
					return output;
				}
				
}

