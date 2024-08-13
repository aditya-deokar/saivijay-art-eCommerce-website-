/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.artistrycart.servlets;

import com.mycompany.artistrycart.dao.orderdao;
import com.mycompany.artistrycart.entities.Orders;
import com.mycompany.artistrycart.entities.users;
import com.mycompany.artistrycart.helper.ConnectionProvider;

import com.razorpay.Order;
import com.razorpay.*;
import com.razorpay.RazorpayException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONObject;

/**
 *
 * @author adity
 */
public class orderNowServlet extends HttpServlet {

    
       // Replace these with your Razorpay API Key and Secret
    private static final String KEY_ID = "rzp_test_YGFP79JcgwwndQ";
    private static final String KEY_SECRET = "sME2YPrCqQ99ErDP8eBaAAwA";
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
//   SimpleDateFormat formatter= new SimpleDateFormat("yyyy-mm-dd"); 
 users user=(users)request.getSession().getAttribute("currentUser");

 
   if(user!=null){
float amt=Float.parseFloat(request.getParameter("price").toString());
        // Razorpay initialization
        RazorpayClient razorpay = null;
        
            razorpay = new RazorpayClient(KEY_ID, KEY_SECRET);
       

        // Creating a new order
        JSONObject orderRequest = new JSONObject();
        orderRequest.put("amount", amt*100); // Amount in paise
        orderRequest.put("currency", "INR");
        orderRequest.put("receipt", "order_rcptid_11");


        Order order=razorpay.orders.create(orderRequest);
        System.out.println(order);
        String rid=order.get("id");
        String rstatus=order.get("status");
//        String rorderid=order.get("razorpay_order_id");
        System.out.println(rid);
        System.out.println(rstatus);
// 
   
   
        String productId=request.getParameter("pid");
        int productQuantity=Integer.parseInt(request.getParameter("quantity"));
        
        if(productQuantity <=0)
        {
            productQuantity=1;
        }
        
        
        Orders or=new Orders();
        or.setuId(user.getUserid());
        or.setProId(Integer.parseInt(productId));
        or.setQuantity(productQuantity);
        or.setRPorderId(rid);
        
        orderdao odao=new orderdao(ConnectionProvider.getConnection());
     
        
        if(odao.insertOrder(or))
        {
             // Payment form HTML
           out.println("<html> <head>  <link rel=\"stylesheet\" href=\"css/style.css\"> </head> <body>");
          out.println("<h1>Pay With Razorpay</h1>");
            out.println("<form action='Payment' method='POST'>");
           out.println("<script src='https://checkout.razorpay.com/v1/checkout.js' data-key='" + KEY_ID + "' data-amount='" + amt + "' data-currency='INR' data-order_id='" + order.get("id") + "' data-buttontext='Pay with Razorpay' data-name='SaiVijay Art' data-description='Purchase Description' data-image=''>");
            out.println("</script>");
           
            
           out.println("<input type='hidden' custom='Hidden Element' name='hidden' value='hidden value' />");
           out.println("<input type='hidden' custom='Hidden Element' name='custname' value='" + user.getUsername() + "' />");
           out.println("<input type='hidden' custom='Hidden Element' name='uid' value='" +user.getUserid()+ "' />");
            out.println("<input type='hidden' custom='Hidden Element' name='proid' value='" +productId + "' />");
//             out.println("<input type='hidden' custom='Hidden Element' name='oid' value='" +or.getRPorderId()+ "' />");
           out.println("</form>");
           
          
            out.println("</body></html>");
            
//              response.sendRedirect("order.jsp");
        }else{
            out.println("order failed");
        }
        
   } else{
       response.sendRedirect("login.jsp");
   }  
   
            
            
        } catch (RazorpayException ex) {
            Logger.getLogger(orderNowServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doGet(request,response);
       
        String paymentId = request.getParameter("razorpay_payment_id");
        String orderId = request.getParameter("razorpay_order_id");
        String signature = request.getParameter("razorpay_signature");
        
        
        

        // Verify Signature
//       String generatedSignature = RazorpaySignature.calculateSignature(orderId, paymentId, "sME2YPrCqQ99ErDP8eBaAAwA");
//        boolean isValidSignature = generatedSignature.equals(signature);

//        if (isValidSignature) {
//            // Payment successful
//            response.getWriter().print("Payment Successful!");
//        } else {
//            // Payment failed
//            response.getWriter().print("Payment Failed!");
//        }
//    

       
       
    }
}
