/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.artistrycart.servlets;

import com.mycompany.artistrycart.dao.productdao;
import com.mycompany.artistrycart.entities.category;
import com.mycompany.artistrycart.entities.product;
import com.mycompany.artistrycart.helper.ConnectionProvider;
import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.*;

@MultipartConfig
public class addProductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String pName = request.getParameter("proTitle");
            String pDesc = request.getParameter("proDesc");
            float pPrice = Float.parseFloat(request.getParameter("proPrice"));
            int pDiscount = Integer.parseInt(request.getParameter("proDiscount"));
            int pQuantity = Integer.parseInt(request.getParameter("proQuantity"));
            int categoryId = Integer.parseInt(request.getParameter("cateId"));

            Part part1 = request.getPart("pImg1");
            Part part2 = request.getPart("pImg2");
            Part part3 = request.getPart("pImg3");
            Part part4 = request.getPart("pImg4");

//           product pro=new product(pName, pDesc, pPrice, pDiscount, pQuantity, part1.getSubmittedFileName(), part2.getSubmittedFileName(), part3.getSubmittedFileName(), part4.getSubmittedFileName());
            product pro = new product();
            pro.setpName(pName);
            pro.setpDesc(pDesc);
            pro.setpPrice(pPrice);
            pro.setpDiscount(pDiscount);
            pro.setpQuantity(pQuantity);
            pro.setCategoryId(categoryId);
            pro.setpImg1(part1.getSubmittedFileName());
            pro.setpImg2(part2.getSubmittedFileName());
            pro.setpImg3(part3.getSubmittedFileName());
            pro.setpImg4(part4.getSubmittedFileName());
           
            productdao dao = new productdao(ConnectionProvider.getConnection());

//     ******to save img in database
            if (dao.saveProduct(pro)) {
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("message", "One Product Succesfully added!!");
                response.sendRedirect("admin.jsp");
                
            } else {
                System.out.println("eroorr");
            }
            
//            ******end of save img in database





//           ***********upload image to the project folder***************
            ServletContext cntx = request.getServletContext();
            String path1 = cntx.getRealPath("img") + File.separator + "products" + File.separator + part1.getSubmittedFileName();
            String path2 = cntx.getRealPath("img") + File.separator + "products" + File.separator + part2.getSubmittedFileName();
            String path3 = cntx.getRealPath("img") + File.separator + "products" + File.separator + part3.getSubmittedFileName();
            String path4 = cntx.getRealPath("img") + File.separator + "products" + File.separator + part4.getSubmittedFileName();

            //            System.out.println(path);
            // C:\Users\adity\Documents\NetBeansProjects\artistrycart\target\artistrycart-1.0-SNAPSHOT\img\products\1703520498186.jpg
            //  Uploading code to target\artistrycart-1.0
            try {

                // ****img-1   
                FileOutputStream fos1 = new FileOutputStream(path1);

                InputStream is1 = part1.getInputStream();

                //            reading data
                byte[] data1 = new byte[is1.available()];
                is1.read(data1);

                //            write data
                fos1.write(data1);

                fos1.close();

                //  ***code end of img-1
                // ****img-2,3,4   
                FileOutputStream fos2 = new FileOutputStream(path2);
                FileOutputStream fos3 = new FileOutputStream(path3);
                FileOutputStream fos4 = new FileOutputStream(path4);

                InputStream is2 = part2.getInputStream();
                InputStream is3 = part3.getInputStream();
                InputStream is4 = part4.getInputStream();

                //            reading data
                byte[] data2 = new byte[is2.available()];
                is2.read(data2);

                byte[] data3 = new byte[is3.available()];
                is3.read(data3);

                byte[] data4 = new byte[is4.available()];
                is4.read(data4);

                //            write data
                fos2.write(data2);
                fos3.write(data3);
                fos4.write(data4);

                fos2.close();
                fos3.close();
                fos4.close();
                //  ***code end of img-2,3,4

            } catch (Exception e) {
                e.printStackTrace();
            }

//            ******** end of upload image to the project folder***************
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
