package com;

//For REST service
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;  


//For JSON
import com.google.gson.*; 

//For XML
import org.jsoup.*; 
import org.jsoup.parser.*; 
import org.jsoup.nodes.Document;

import models.Payment;

@Path("/payment")
public class PaymentService {
	Payment paymentObj = new Payment();
	
	// Get customer detailed bill before confirmation of customer paying amount
//	@GET
	@POST
	// for get methon add /{uid} last of path
	@Path("/billbeforepay")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_HTML)
	// for get method use @PathParam instead of @FormParam
	public String getCustomerDetails(@FormParam("uid") String uid) {
		String output = paymentObj.getCustomerDetails(uid);
		return output;
	}
}
