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

import models.Notice;


@WebServlet("/NoticeAPI")
public class NoticeAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Notice notice = new Notice();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String output = notice.getallnoticedetails();
		System.out.println(output);
		response.getWriter().write(output);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String UserID = request.getParameter("noticeUserid");
		String output = notice.noticeDetails(UserID);
		response.getWriter().write(output);
		
	}


	// Converter
		private static String inputStreamToString(InputStream inputStream) {
		      Scanner scanner = new Scanner(inputStream, "UTF-8");
		      return scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
		  }
		
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Convert request body to json
				String jsonString = inputStreamToString(request.getInputStream());
				JSONObject json = new JSONObject(jsonString);
				
				//parameters
				int id = json.getInt("id");
				
				//clear history
				    System.out.println(id);
					String output = notice.deleteNotice(id);
					response.getWriter().write(output);
				
	}

}
