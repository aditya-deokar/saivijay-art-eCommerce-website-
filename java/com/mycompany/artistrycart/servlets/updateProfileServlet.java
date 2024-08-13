/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.artistrycart.servlets;

import java.io.IOException;

import com.mycompany.artistrycart.entities.users;
import com.mycompany.artistrycart.dao.userdao;
import com.mycompany.artistrycart.helper.ConnectionProvider;

import jakarta.servlet.*;

import jakarta.servlet.http.*;
import jakarta.servlet.http.HttpServletResponse;

public class updateProfileServlet extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        String state = req.getParameter("state");
        String city = req.getParameter("city");
        String pincode = req.getParameter("pincode");
        String altmobNo = req.getParameter("altmobno");
        String email=req.getParameter("email");

//        alternate method
//            create user obj and set all data to that obj
        users user = new users(state,city,pincode,altmobNo,email);

//        create user dao obj 
        userdao dao = new userdao(ConnectionProvider.getConnection());

        if (dao.updateUser(user)) {

            HttpSession httpSession = req.getSession();
            httpSession.setAttribute("message", "Update Succesfull!");
            resp.sendRedirect("profile.jsp");
            return;

        } else {
            System.out.println("eroorr");
        }

    }
}
