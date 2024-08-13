package com.mycompany.artistrycart.servlets;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import com.mycompany.artistrycart.entities.users;
import com.mycompany.artistrycart.dao.userdao;
import com.mycompany.artistrycart.helper.ConnectionProvider;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/RServlet"})
public class RServlet extends HttpServlet 
{
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest req ,HttpServletResponse resp)throws IOException ,ServletException
   {
	
	String username=req.getParameter("user_name");
        String email=req.getParameter("user_email");
	String password=req.getParameter("user_password");
	String phone_no=req.getParameter("user_phone");
	String address=req.getParameter("user_address");
        
        
//        alternate method

//            create user obj and set all data to that obj

        users user=new users(username, email, password, phone_no, address);
        
        
//        create user dao obj 
        userdao dao=new userdao(ConnectionProvider.getConnection());
        
        if(dao.saveUser(user)){
            
            
                HttpSession httpSession=req.getSession();
                httpSession.setAttribute("message","Registration Succesfull! Please log in here..");
                resp.sendRedirect("login.jsp");
                return;
            
        }
        else{
            System.out.println("eroorr");
        }

//        alternate meth end
	
//...............................	
//	meth-1



//        String myname=req.getParameter("user_name");
//        String myemail=req.getParameter("user_email");
//	String mypassword=req.getParameter("user_password");
//	String myphone=req.getParameter("user_phone");
//	String myaddress=req.getParameter("user_address");
//        
        
//	try{
//		Class.forName("com.mysql.cj.jdbc.Driver");
//	
//	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/saivijay_art","root","adi@8080");
//
//	String q="insert into users(username ,email ,password ,phone_no ,address) values(?,?,?,?,?)";
//	
//	PreparedStatement pstmt=con.prepareStatement(q);
//	
//	pstmt.setString(1,myname);
//	pstmt.setString(2,myemail);
//        pstmt.setString(3,mypassword);
//	pstmt.setString(4,myphone);
//	pstmt.setString(5,myaddress);
//
//	int count=pstmt.executeUpdate();
//	
//	if(count>0)
//	{ 
//		System.out.println("Record inserted....");
//                
//                HttpSession httpSession=req.getSession();
//                httpSession.setAttribute("message","Registration Succesfull!!");
//                resp.sendRedirect("resister.jsp");
//                return;
//		
//	}
//
//
//	}
//	catch(Exception e)
//	{
//		e.printStackTrace();
//	}

//meth-1 end
	System.out.println("eroorr");
   }
}
