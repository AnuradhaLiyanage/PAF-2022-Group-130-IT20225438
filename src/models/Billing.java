package models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import database.DBConnect;

public class Billing {
	
	public String InsertBillingDetails(String uid, String name, String sdate, String edate, String acconumber, String bilnumber,
			String unit, Float amount ) {
		// TODO Auto-generated method stub
		String output="";
		
		try {
			//check database connection
			Connection con=DBConnect.connect();
			if(con==null) {return "Database not connected";}
			
			//Insert into  billing details
			Statement stmt=con.createStatement();
			String sql="INSERT INTO billing VALUES ('"+uid+"','"+name+"','"+sdate+"','"+edate+"','"+acconumber+"','"+bilnumber+"','"+unit+"','"+amount+"')";
		    int rs=stmt.executeUpdate(sql);
		    
		    if(rs>0) {
		    	output="<h4>Billing Details Successfully Inserted</h4>";
		    }else {
		    	output="Billings Details not Insert";
		    }
			
		} catch (Exception e) {
			// TODO: handle exception
			
			output="Billing Details not Insert";
			System.err.println(e.getMessage());
		}
		return output;
	}

	
	//update billing details
	
	public String UpdateBillingDetails(String uid, String name, String sdate, String edate, String acconumber, String bilnumber, String unit,
			Float amount ) {
		// TODO Auto-generated method stub
		String output="";
		String erroutput="";
		boolean  isUpdated=false;
		
		try {
			// check db connection
						Connection con = DBConnect.connect();
						if(con == null) { return "Error while connecting to the database.."; }
						
						Statement stmt1 = con.createStatement();
						
						
						String sql1 = "update billing set UserID='"+uid+"', Name='"+name+"', StartDate='"+sdate+"', EndDate='"+edate+"', BillNumber='"+bilnumber+"', NoofUnit='"+unit+"', BillAmount='"+amount+"' where AccountNumber="+acconumber+"";					
						int result = stmt1.executeUpdate(sql1);
						
						if (result > 0) {
							isUpdated = true;
						} else {
							isUpdated = false;
						}
						
						output = "<h4>Billing Details successfully updated!!!</h4>";
							
			
		} catch (Exception e) {
			// TODO: handle exception

			erroutput="Billing Details not Updated";
			System.err.println(e.getMessage());
			
		}
		if (isUpdated) {
			return output;
			
			}
				
			
		
		return erroutput="Billing Details not Updated";
	}
	
	
	//delete billing details
	
	public String DeleteBillingDetails(String acconumber) {
		// TODO Auto-generated method stub
		String output="";
		String erroutput="";
		boolean  isDeleted=false;
		
		try {
			// check db connection
						Connection con = DBConnect.connect();
						if(con == null) { return "Error while connecting to the database.."; }
						
						Statement stmt1 = con.createStatement();
						
						
						String sql1 = "delete from billing where AccountNumber="+acconumber+"";					
						int result = stmt1.executeUpdate(sql1);
						
						if (result > 0) {
							isDeleted = true;
						} else {
							isDeleted = false;
						}
						
						output = "<h4>Billing Details successfully deleted!!!</h4>";
							
			
		} catch (Exception e) {
			// TODO: handle exception

			erroutput="Billing Details Delete";
			System.err.println(e.getMessage());
			
		}
		if (isDeleted) {
			return output;
			
			}
				
			
		
		return erroutput="Billing Details Delete";
	}
	
	
//get billing details.......................................................
	//login
	public String billingDetails(String acconumber) {
	String output="";



	try {
	//check database connection
	Connection con=DBConnect.connect();
	if(con==null) {return "Database not connected";}



	//validate username and password
	Statement stmt=con.createStatement();
	String sql="SELECT * FROM billing WHERE AccountNumber='"+acconumber+"'";
	ResultSet rs=stmt.executeQuery(sql);



	String UserID=null;
	String Name=null;
	String StartDate=null;
	String EndDate=null;
	String AccountNumber=null;
	String BillNumber=null;
	String NoofUnit=null;
	Float BillAmount=(float) 0;



	if(rs.next()) {
		UserID=rs.getString(1);
	Name=rs.getString(2);
	StartDate=rs.getString(3);
	EndDate=rs.getString(4);
	AccountNumber=rs.getString(5);
	BillNumber=rs.getString(6);
	NoofUnit=rs.getString(7);
	BillAmount=rs.getFloat(8);
	}



	//html table open
	output="<table border='1'>"
	+ "<tr>"
	+ "<th>UserID</th>"
	+ "<th>Name</th>"
	+ "<th>StartDate</th>"
	+ "<th>EndDate</th>"
	+ "<th>AccountNumber</th>"
	+ "<th>BillNumber</th>"
	+ "<th>NoofUnit</th>"
	+ "<th>BillAmount</th>"
	+ "</tr>"
	+ "<tr>"
	+ "<td>"+UserID+"</td>"
	+ "<td>"+Name+"</td>"
	+ "<td>"+StartDate+"</td>"
	+ "<td>"+EndDate+"</td>"
	+ "<td>"+AccountNumber+"</td>"
	+ "<td>"+BillNumber+"</td>"
	+ "<td>"+NoofUnit+"</td>"
	+ "<td>"+BillAmount+"</td>"
	+ "</tr>"
	+ "</table>";





	} catch (Exception e) {
	// TODO: handle exception



	output="Bill not Found";
	System.err.println(e.getMessage());
	}
	return output;
	}
	
}
