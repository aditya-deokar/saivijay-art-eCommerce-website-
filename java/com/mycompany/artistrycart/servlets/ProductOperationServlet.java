/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.artistrycart.servlets;

import com.mycompany.artistrycart.dao.categorydao;
import com.mycompany.artistrycart.dao.productdao;
import com.mycompany.artistrycart.entities.category;
import com.mycompany.artistrycart.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author adity
 */
public class ProductOperationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

//            Two Operation
//1.addCategory        2.addProduct
            String op = request.getParameter("operation");
            

            if (op.trim().equals("addcategory")) {
//            add category

                //           fetching category data
                String ctitle = request.getParameter("cateTitle");
                String cdesc = request.getParameter("cateDesc");

                category cate = new category( ctitle, cdesc);
                cate.setCateTitle(ctitle);
                cate.setCateDesc(cdesc);

//        categoty data save
                categorydao cdao = new categorydao(ConnectionProvider.getConnection());

                if (cdao.saveCategory(cate)) {
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("message", "category add sucssesfully!!");
                    response.sendRedirect("admin.jsp");
                    return;
                }else{
//                    error
                }
                
                
                
                

            } 
//            else  if (op.trim().equals("deleteCategory"))
//            {
//
//			int cid = Integer.parseInt(request.getParameter("cid"));
//			categorydao.deleteCategory(cid);
//			response.sendRedirect("display_category.jsp");
//
//            }else if (op.trim().equals("deleteProduct")) {
//
//			int pId = Integer.parseInt(request.getParameter("pId"));
//			productdao.deleteProduct(pId);
//			response.sendRedirect("display_products.jsp");
//
//		}


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
