/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.artistrycart.servlets;

import com.mycompany.artistrycart.dao.orderdao;
import com.mycompany.artistrycart.entities.*;
import com.mycompany.artistrycart.entities.users;
import com.mycompany.artistrycart.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author adity
 */
public class checkOutServlet extends HttpServlet {

  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            
            try{
                ArrayList<cart> cart_list=(ArrayList<cart>) request.getSession().getAttribute("cart-list");
                
                 users user=(users)request.getSession().getAttribute("currentUser");
                 
                 if(cart_list!= null && user!= null)
                 {
                    
                     for(cart c:cart_list){
                         Orders order=new Orders();
                         
                         order.setpId(c.getpId());
                         order.setuId(user.getUserid());
                         order.setQuantity(c.getQuantity());
                         
                        orderdao odao=new orderdao(ConnectionProvider.getConnection());
                        boolean result=odao.insertOrder(order);
                        
                        if(!result) break;
                        
                     
                     }
                     
                     cart_list.clear();
                     response.sendRedirect("order.jsp");
                    
                 }else{
                 
                     if(user==null)
                     {
                         response.sendRedirect("login.jsp");
                     }else{
                           response.sendRedirect("cartt.jsp");
                     }
                 }
                
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doGet(request,response);
    }
    

}
