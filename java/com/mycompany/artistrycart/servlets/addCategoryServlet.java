
package com.mycompany.artistrycart.servlets;

import com.mycompany.artistrycart.dao.categorydao;
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
public class addCategoryServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = resp.getWriter()) {
            
            
            
             String ctitle=req.getParameter("cateTitle");
	String cdesc=req.getParameter("cateDesc");
	


//            create user obj and set all data to that obj

        category cate=new category(ctitle,cdesc);
        
        
//        create cate dao obj 
        categorydao dao=new categorydao(ConnectionProvider.getConnection());
        
        if(dao.saveCategory(cate)){
            
            
                HttpSession httpSession=req.getSession();
                httpSession.setAttribute("message","One Category Succesfully added!!");
                resp.sendRedirect("admin.jsp");
                return;
            
        }
        else{
            System.out.println("eroorr");
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
