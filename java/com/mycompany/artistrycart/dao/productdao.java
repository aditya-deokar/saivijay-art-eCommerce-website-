/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.artistrycart.dao;

import com.mycompany.artistrycart.entities.cart;
import com.mycompany.artistrycart.entities.category;
import com.mycompany.artistrycart.entities.product;
import com.mycompany.artistrycart.entities.users;
import java.sql.*;
import java.util.*;

/**
 *
 * @author adity
 */
public class productdao {

    private Connection con;

    public productdao(Connection con) {

        this.con = con;
    }

    public boolean saveProduct(product p) {

        boolean f = false;

        try {

            String q = "insert into product(pName,pDesc,pPrice,pDiscount,pQuantity,categoryId,pImg1,pImg2,pImg3,pImg4) values(?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement pstmt = con.prepareStatement(q);

            pstmt.setString(1, p.getpName());
            pstmt.setString(2, p.getpDesc());
            pstmt.setFloat(3, p.getpPrice());
            pstmt.setInt(4, p.getpDiscount());
            pstmt.setInt(5, p.getpQuantity());
            pstmt.setInt(6, p.getCategoryId());
            pstmt.setString(7, p.getpImg1());
            pstmt.setString(8, p.getpImg2());
            pstmt.setString(9, p.getpImg3());
            pstmt.setString(10, p.getpImg4());

            pstmt.executeUpdate();

            f = true;

        } catch (Exception e) {

            e.printStackTrace();
        }

        return f;
    }

//    get all products
    public ArrayList<product> getAllProducts() {
        ArrayList<product> list = new ArrayList<>();

        try {

            String q2 = "select *from product order by pId desc";

            Statement stmt = this.con.createStatement();

            ResultSet set = stmt.executeQuery(q2);

            while (set.next()) {
                int pId = set.getInt("pId");
                String pName = set.getString("pName");
                String pDesc = set.getString("pDesc");
                float pPrice = set.getFloat("pPrice");
                int pDiscount = set.getInt("pDiscount");
                int pQuantity = set.getInt("pQuantity");
                String pImg1 = set.getString("pImg1");
                String pImg2 = set.getString("pImg2");
                String pImg3 = set.getString("pImg3");
                String pImg4 = set.getString("pImg4");

                product pa = new product(pId, pName, pDesc, pPrice, pDiscount, pQuantity, pImg1, pImg2, pImg3, pImg4);
                list.add(pa);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }
    
    //    get all products
    public ArrayList<product> getNewProducts() {
        ArrayList<product> list = new ArrayList<>();

        try {

            String q2 = "select *from product where pType='new'";

            Statement stmt = this.con.createStatement();

            ResultSet set = stmt.executeQuery(q2);

            while (set.next()) {
                int pId = set.getInt("pId");
                String pName = set.getString("pName");
                String pDesc = set.getString("pDesc");
                float pPrice = set.getFloat("pPrice");
                int pDiscount = set.getInt("pDiscount");
                int pQuantity = set.getInt("pQuantity");
                String pImg1 = set.getString("pImg1");
                String pImg2 = set.getString("pImg2");
                String pImg3 = set.getString("pImg3");
                String pImg4 = set.getString("pImg4");

                product pa = new product(pId, pName, pDesc, pPrice, pDiscount, pQuantity, pImg1, pImg2, pImg3, pImg4);
                list.add(pa);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }

    
     //    get all products
    public ArrayList<product> getFProducts() {
        ArrayList<product> list = new ArrayList<>();

        try {

            String q2 = "select *from product where pType='fp'";

            Statement stmt = this.con.createStatement();

            ResultSet set = stmt.executeQuery(q2);

            while (set.next()) {
                int pId = set.getInt("pId");
                String pName = set.getString("pName");
                String pDesc = set.getString("pDesc");
                float pPrice = set.getFloat("pPrice");
                int pDiscount = set.getInt("pDiscount");
                int pQuantity = set.getInt("pQuantity");
                String pImg1 = set.getString("pImg1");
                String pImg2 = set.getString("pImg2");
                String pImg3 = set.getString("pImg3");
                String pImg4 = set.getString("pImg4");

                product pa = new product(pId, pName, pDesc, pPrice, pDiscount, pQuantity, pImg1, pImg2, pImg3, pImg4);
                list.add(pa);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }

    
    
    

    //    get all products by category id
    public ArrayList<product> getAllProductsById(int categoryId) {
        ArrayList<product> list = new ArrayList<>();

        try {

            String q3 = "select *from product where categoryId=?";

            PreparedStatement pstmt = con.prepareStatement(q3);

            pstmt.setInt(1, categoryId);

            ResultSet set = pstmt.executeQuery();

            while (set.next()) {
                int pId = set.getInt("pId");
                String pName = set.getString("pName");
                String pDesc = set.getString("pDesc");
                float pPrice = set.getFloat("pPrice");
                int pDiscount = set.getInt("pDiscount");
                int pQuantity = set.getInt("pQuantity");
                String pImg1 = set.getString("pImg1");
                String pImg2 = set.getString("pImg2");
                String pImg3 = set.getString("pImg3");
                String pImg4 = set.getString("pImg4");

                product pa = new product(pId, pName, pDesc, pPrice, pDiscount, pQuantity, pImg1, pImg2, pImg3, pImg4);
                list.add(pa);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }
    
    
    
    
     //    get all products by product id
    public ArrayList<product> getAllProductsBypId(int proId) {
        ArrayList<product> list = new ArrayList<>();

        try {

            String q5 = "select *from product where pId=? order by pId desc";

            PreparedStatement pstmt = con.prepareStatement(q5);

            pstmt.setInt(1, proId);

            ResultSet set = pstmt.executeQuery();

            while (set.next()) {
                int pId = set.getInt("pId");
                String pName = set.getString("pName");
                String pDesc = set.getString("pDesc");
                float pPrice = set.getFloat("pPrice");
                int pDiscount = set.getInt("pDiscount");
                int pQuantity = set.getInt("pQuantity");
                String pImg1 = set.getString("pImg1");
                String pImg2 = set.getString("pImg2");
                String pImg3 = set.getString("pImg3");
                String pImg4 = set.getString("pImg4");

                product sp = new product(pId, pName, pDesc, pPrice, pDiscount, pQuantity, pImg1, pImg2, pImg3, pImg4);
                list.add(sp);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }
    
    
    
    
    
     //    get all cart products by product id
    public ArrayList<cart> getCartProductsBypId(int proId) {
        ArrayList<cart> list = new ArrayList<>();

        try {

            String q6 = "select *from product where pId=?";

            PreparedStatement pstmt = con.prepareStatement(q6);

            pstmt.setInt(1, proId);
            
            ResultSet set = pstmt.executeQuery();

            while (set.next()) {
                int pId = set.getInt("pId");
                String pName = set.getString("pName");
                String pDesc = set.getString("pDesc");
                float pPrice = set.getFloat("pPrice");
                int pDiscount = set.getInt("pDiscount");
                int pQuantity = set.getInt("pQuantity");
                String pImg1 = set.getString("pImg1");
                String pImg2 = set.getString("pImg2");
                String pImg3 = set.getString("pImg3");
                String pImg4 = set.getString("pImg4");

                cart ct = new cart(pId, pName, pDesc, pPrice, pDiscount, pQuantity, pImg1, pImg2, pImg3, pImg4);
                list.add(ct);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }
    
    
//*************************************************************************
    //    get all products by id
    public ArrayList<cart> getCartProducts(ArrayList<cart> cartlist) {

        ArrayList<cart> products = new ArrayList<cart>();

        try {

            if (cartlist.size()>0) {

                for (cart item : cartlist)
                {
                    
                    
                    

                    String q4 = "select *from product where pId=?";

                    PreparedStatement pstmt = con.prepareStatement(q4);

                    pstmt.setInt(1, item.getpId());

                    ResultSet rs = pstmt.executeQuery();

                    while (rs.next()) {
                        cart row=new cart();
                        
                        row.setpId(rs.getInt("pId"));
                        row.setpName(rs.getString("pName"));
                        row.setpPrice(rs.getFloat("pPrice"));
                        row.setpImg1(rs.getString("pImg1"));
                       
                        products.add(row);
                    }

                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return products;
    }
//    ***********************************************
    
    
    public double getTotalCartPrice(ArrayList<cart> cartlist)
    {
        double sum=0;
        
        try{
            
            if(cartlist.size()>0)
            {
                for(cart item:cartlist)
                {
                    String q="select pPrice from product where pId=?";
                    
                    PreparedStatement pstmt = con.prepareStatement(q);
                    pstmt.setInt(1, item.getpId());

                    ResultSet rs = pstmt.executeQuery();
                    
                     while (rs.next()) 
                     {
                       
                         sum+=rs.getDouble("pPrice") * item.getQuantity();
                         
                    
                      }
                  }
            
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return sum;
    }
    
    public void deleteProduct(int pId) {
		try {
			String query = "delete from product where pId = ?";
			PreparedStatement psmt = this.con.prepareStatement(query);
			psmt.setInt(1, pId);
			psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

    
    
    

}
