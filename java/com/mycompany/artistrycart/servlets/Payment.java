/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.artistrycart.servlets;

import com.mycompany.artistrycart.dao.orderdao;
import com.mycompany.artistrycart.entities.Orders;
import com.mycompany.artistrycart.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.razorpay.*;
import org.json.JSONObject;

/**
 *
 * @author adity
 */
public class Payment extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     * @throws RazorpayException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String paymentId = request.getParameter("razorpay_payment_id");
            String RorderId = request.getParameter("razorpay_order_id");
            String signature = request.getParameter("razorpay_signature");
            String secret = request.getParameter("Secret");
            String custname = request.getParameter("custname");
            String Status = "paid";
            int uid = Integer.parseInt(request.getParameter("uid"));
            int pid = Integer.parseInt(request.getParameter("proid"));
//            int oid=Integer.parseInt(request.getParameter("oid"));

            System.out.println(paymentId);
            System.out.println(RorderId);
            System.out.println(signature);
            System.out.println(custname);
            System.out.println(Status);
            System.out.println(uid);
            System.out.println(pid);
//             System.out.println(oid);

            JSONObject options = new JSONObject();
            options.put("razorpay_order_id", RorderId);
            options.put("razorpay_payment_id", paymentId);
            options.put("razorpay_signature", signature);

//            
            Orders or = new Orders();

            or.setRPorderId(RorderId);
            or.setRPpaymentId(paymentId);
            or.setRPsign(signature);
            or.setRPstatus(Status);
//        or.setProId(uid);
//         or.setProId(pid);

            orderdao odao = new orderdao(ConnectionProvider.getConnection());
            if (odao.insertPayment(or)) {
//             out.println("<h1>Order Complete</h1>");
                response.sendRedirect("OrderSuccessful.jsp");
             
               
            } else {
//                out.println("<h1>Failed</h1>");
                  response.sendRedirect("OrderFailed.jsp");
            }

//            boolean status = Utils.verifyPaymentSignature(options, secret);
        }

    }

}
