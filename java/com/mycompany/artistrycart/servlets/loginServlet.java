/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.artistrycart.servlets;

import com.mycompany.artistrycart.dao.userdao;
import com.mycompany.artistrycart.entities.Message;
import com.mycompany.artistrycart.helper.ConnectionProvider;
import com.mycompany.artistrycart.entities.users;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author adity
 */
public class loginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String email = request.getParameter("email");
            String password = request.getParameter("password");

//            vadidation code
//            authentication
            String useremail = request.getParameter("email");
            String userpassword = request.getParameter("password");

            userdao dao = new userdao(ConnectionProvider.getConnection());

            users u = dao.getUserByEmailAndPassword(useremail, userpassword);

            if (u == null) {
//               **   login error **

               
               HttpSession httpSession=request.getSession();
                httpSession.setAttribute("message","Invalide Details Please try another one!!");
                response.sendRedirect("login.jsp");
                return;
//***********************************
            } else {

//             login sucsess
//Admin user-->admin.jsp
//normal user-->normal.jsp(home)
                HttpSession s = request.getSession();
                s.setAttribute("currentUser", u);

                if (u.getUsertype().equals("admin")) {

                    response.sendRedirect("admin.jsp");

                } else if (u.getUsertype().equals("normal")) {

//                    response.sendRedirect("home.jsp");
                    response.sendRedirect("profile.jsp");
                } else {
                    out.print("We have not Identified!!");
                }

            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
