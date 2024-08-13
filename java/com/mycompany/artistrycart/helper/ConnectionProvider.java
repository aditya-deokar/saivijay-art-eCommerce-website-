/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.artistrycart.helper;


import java.sql.*;

/**
 *
 * @author adity
 */
public class ConnectionProvider {
    
    
    
    private static Connection con;
    
    public static Connection getConnection(){
      
        try{
        
            if(con==null)
               {
                   
                    Class.forName("com.mysql.cj.jdbc.Driver");
        
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/saivijay_art","root","adi@8080");
    
        
               }
        
        }catch(Exception e){
            
            e.printStackTrace();
        }
        
        return con;
       
    }
    
}
