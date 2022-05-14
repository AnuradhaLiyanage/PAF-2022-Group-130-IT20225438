package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import models.Payment;

@WebServlet("/PaymentAPI")
public class PaymentAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Payment paymentObj = new Payment();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("puid");
		String parseuidfH = request.getParameter("parseuidfH");
		
		String userIdentity = request.getParameter("uid");
		String insert = request.getParameter("insert");
		String holderName = request.getParameter("cardName");
		String cardNumber = request.getParameter("cardNumber");
		String cvv = request.getParameter("cardCvv");
		String CardExpDate = request.getParameter("cardExpD");
		String amount = request.getParameter("amount");
		
		if (parseuidfH == null) {
			if(insert == null) {
				String output = paymentObj.showPaymentCusDetails(uid);
				response.getWriter().write(output);
			} else {
				String output = paymentObj.payTheBill(userIdentity, amount);
				response.getWriter().write(output);
			}
		} else {
			String output = paymentObj.showPaymentHistory(parseuidfH);
			response.getWriter().write(output);
		}		
		
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
