/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.artistrycart.dao;

import com.mycompany.artistrycart.entities.cart;
import com.mycompany.artistrycart.entities.Orders;
import com.mycompany.artistrycart.entities.product;
import com.mycompany.artistrycart.entities.users;
import com.mycompany.artistrycart.helper.ConnectionProvider;
import com.mysql.cj.protocol.Resultset;
import java.sql.*;
import java.util.*;

/**
 *
 * @author adity
 */
public class orderdao {
    
    private Connection con;

    public orderdao(Connection con) {
        this.con = con;
    }
    
    public boolean insertOrder(Orders order)
    {
        boolean result=false;
        
        try{
            
            
            String q="insert into saivijay_art.order(uId,proId,quantity,RPorderId) values(?,?,?,?)";
            
            
            PreparedStatement pstmt = con.prepareStatement(q);

            pstmt.setInt(1, order.getuId());
            pstmt.setInt(2, order.getProId());
            pstmt.setInt(3, order.getQuantity());
            pstmt.setString(4, order.getRPorderId());
          
          
            pstmt.executeUpdate();

            result= true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return result;
    }
    
    
    
    public boolean insertPayment(Orders order)
    {
        boolean result=false;
        
        try{
            
            
            String q="update saivijay_art.order SET RPpaymentId=? ,RPsign=? ,RPstatus=? where RPorderId=? ";
//            UPDATE `saivijay_art`.`order` SET `RPorderId` = 'rt', `RPpaymentId` = 'gg', `RPstatus` = '', `RPsign` = 'hh' WHERE (`orderId` = '42');

            
            PreparedStatement pstmt = con.prepareStatement(q);

            
            pstmt.setString(1, order.getRPpaymentId());
            pstmt.setString(2, order.getRPsign());
             pstmt.setString(3, order.getRPstatus());
            pstmt.setString(4, order.getRPorderId()); 
             
           
          
          
            pstmt.executeUpdate();

            result= true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return result;
    }
    
    
    //    get all order products by uid
    public ArrayList<Orders> getOrderedProducts(int uId) {

        ArrayList<Orders> products = new ArrayList<Orders>();

        try {

           
                    
                    
                    

                    String q4 = "SELECT * FROM product JOIN saivijay_art.order ON uId=saivijay_art.order.uId where uId=? AND RPpaymentId IS NOT NULL;";

                    PreparedStatement pstmt = con.prepareStatement(q4);

                    pstmt.setInt(1, uId);

                    
                    ResultSet rs = pstmt.executeQuery();

                    while (rs.next()) {
                     
                        Orders row=new Orders();
//                   
        
                        row.setProId(rs.getInt("proId"));
                        row.setpName(rs.getString("pName"));
                        row.setpPrice(rs.getFloat("pPrice"));
                        row.setpImg1(rs.getString("pImg1"));
                        row.setOrderId(rs.getInt("OrderId"));
                        row.setRPorderId(rs.getString("RPorderId"));
                        row.setRPpaymentId(rs.getString("RPpaymentId"));
                        row.setuId(rs.getInt("uId"));
                        
                        
                        products.add(row);
                
                    }

              

        } catch (Exception e) {
            e.printStackTrace();
        }

        return products;
    }
//    ******************************************
    
    public List<Orders> userOrder(int id){
    
        List<Orders> list=new ArrayList<>();
        
        try{
            String q="select * from saivijay_art.order where uId=? order by order.orderId desc ";
            
            PreparedStatement pstmt = con.prepareStatement(q);

            
            pstmt.setInt(1, id );
            
            
            pstmt.executeUpdate();

          
         
//             ResultSet rs= pstmt.executeQuery();
//              
//              while(rs.next()){
//                  Orders order=new Orders();
//                  productdao pdao= new productdao(ConnectionProvider.getConnection());
//                  
//                  int pid=rs.getInt("pId");
//                  
                  
                  
//              }
             
           
        
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return list;
        
    }
    
    
    
//    ....................
     public ArrayList<Orders> getAllOrders() {
        ArrayList<Orders> list = new ArrayList<>();

        try {

            String q2 = "select *from order";

            Statement stmt = this.con.createStatement();

            ResultSet set = stmt.executeQuery(q2);

            while (set.next()) {
                int orderId = set.getInt("orderId");
                int uId = set.getInt("uId");
                int proId = set.getInt("proId");
                String RPorderId = set.getString("RPorderId");
                String RPpaymentId = set.getString("RPpaymentId");
                 String RPstatus = set.getString("RPstatus");
               
                 Orders o=new Orders(orderId,uId,proId,RPorderId,RPpaymentId,RPstatus);
     
                list.add(o);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }
    
    
    
}
