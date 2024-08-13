/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.artistrycart.servlets;

import com.mycompany.artistrycart.entities.cart;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author adity
 */
public class addtoCartServlet extends HttpServlet {

//   
    protected void doPost(HttpServletRequest  request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
        int pid=Integer.parseInt(request.getParameter("productid"));    
        String pname=request.getParameter("productname");
       int pquantity=Integer.parseInt(request.getParameter("pquantity")); 
	String pimage=request.getParameter("productimage");      
	float price=Float.parseFloat(request.getParameter("productprice")); 
        
        
           
            ArrayList<cart> cartlist=new ArrayList<>();
            

            
            cart c=new cart();
            c.setPrice(price);
            c.setPname(pname);
            c.setPimg(pimage);
            c.setQuantity(pquantity);
            c.setpId(pid);
            
            
           
            
            HttpSession session=request.getSession();
            ArrayList<cart>cart_list=(ArrayList<cart>) session.getAttribute("cart-list");
            
            if(cart_list==null){
                cartlist.add(c);

                session.setAttribute("cart-list",cartlist);
                
//                out.println("Session created and added to the list");
           response.sendRedirect("cartt.jsp");
                
            }else
            {
                cartlist=cart_list;
                boolean exist=false;
                
                for (cart cl: cart_list)
                {
                    if(cl.getpId()==pid)
                    {
                        exist=true;
                        out.println("Item all ready exixt ");
                       out.println("Product is already exist <a href='cartt.jsp'>go to shop</a>");
                    }
                  
                }
                
                if(!exist)
                    {
                        cartlist.add(c);
                        response.sendRedirect("cartt.jsp");
                    }
            }
            
           
            
            
        }
    }
}

    