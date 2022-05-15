package servlet;

import java.io.IOException;
import java.io.InputStream;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import models.Billing;
import models.Notice;




@WebServlet("/BillingAPI")
public class BillingAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Billing billing = new Billing();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String output = billing.getallbilldetails();
		System.out.println(output);
		response.getWriter().write(output);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//check page
	String page = request.getParameter("findpage");
		
		if(page.equals("billinsertpage")) {
			// insert details
			String billinguid = request.getParameter("billinguid");
			String billingusername = request.getParameter("billingusername");
			String billingstartdate = request.getParameter("billingstartdate");
			String billingenddate = request.getParameter("billingenddate");
			int billingaccountnumber = Integer.parseInt(request.getParameter("billingaccountnumber"));
			int billingbill = Integer.parseInt(request.getParameter("billingbill"));
			int billingunit = Integer.parseInt(request.getParameter("billingunit"));
			Float billingamount = Float.parseFloat(request.getParameter("billingamount"));
			
			String output = billing.InsertBillingDetails(billinguid, billingusername, billingstartdate, billingenddate, billingaccountnumber, billingbill, billingunit, billingamount);
			response.getWriter().write(output);
			
		} else if(page.equals("singlebilldetails")) {
			// get details
			String acconumber = request.getParameter("noticeUserid");
			String output = billing.billingDetails(acconumber);
			System.out.println(acconumber);
			response.getWriter().write(output);
		}
		
	}

	
	// Converter
	private static String inputStreamToString(InputStream inputStream) {
	      Scanner scanner = new Scanner(inputStream, "UTF-8");
	      return scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
	  }
	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Convert request body to json
		String jsonString = inputStreamToString(request.getInputStream());
		JSONObject json = new JSONObject(jsonString);
		
		//parameters
		
		String userid = json.getString("userid");
		String name = json.getString("name");
		String startdate = json.getString("startdate");
		String enddate = json.getString("enddate");
		int accno = json.getInt("accno");
		int billno = json.getInt("billno");
		int noofunits = json.getInt("noofunits");
		Float billamount = Float.parseFloat(json.getString("billamount"));
		
		
		String output = billing.UpdateBillingDetails(userid, name, startdate, enddate, accno, billno, noofunits, billamount);
		response.getWriter().write(output);
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Convert request body to json
				String jsonString = inputStreamToString(request.getInputStream());
				JSONObject json = new JSONObject(jsonString);
				
				//parameters
				String accno = json.getString("accno");
				
				//clear history
			    System.out.println(accno);
				String output = billing.DeleteBillingDetails(accno);
				response.getWriter().write(output);
				
	}

}
