/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.artistrycart.dao;


import com.mycompany.artistrycart.entities.users;
import com.mysql.cj.xdevapi.SessionFactory;
import java.sql.*;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author adity
 */
public class userdao {

    private SessionFactory factory;

    public userdao(SessionFactory factory) {

        this.factory = factory;
    }

    private Connection con;

    public userdao(Connection con) {
        this.con = con;
    }

//    methods to insert user to data base
    public boolean saveUser(users user) {

        boolean f = false;
        try {
//             user->database
            String q = "insert into users(username ,email ,password ,phone_no ,address) values(?,?,?,?,?)";

            PreparedStatement pstmt = con.prepareStatement(q);

            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getPhone_no());
            pstmt.setString(5, user.getAddress());

            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return f;

    }
    
    
     public boolean updateUser(users user) {

        boolean f = false;
        try {
//             user->database
            String q = "update users set state=? ,city=? ,pincode=? ,altmobno=? where email=?";
            PreparedStatement pstmt = con.prepareStatement(q);

            pstmt.setString(1, user.getState());
            pstmt.setString(2, user.getCity());
            pstmt.setString(3, user.getPincode());
            pstmt.setString(4, user.getAltmobNo());
            pstmt.setString(5, user.getEmail());

            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return f;

    }
    

//    get user by email and password(login)
    public users getUserByEmailAndPassword(String email, String password) {

        users user = null;

        try {

            String q = "select *from users where email =? and password =?";

            PreparedStatement pstmt = con.prepareStatement(q);

            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();

            if (set.next()) {

                user = new users();

//              data from db
                String name = set.getString("username");
//             set to user obj
                user.setUsername(name);

//              in short
                user.setUserid(set.getInt("Userid"));

                user.setPassword(set.getString("password"));

                user.setEmail(set.getString("email"));

                user.setPhone_no(set.getString("phone_no"));

                user.setAddress(set.getString("address"));

                user.setUsertype(set.getString("usertype"));

            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return user;
    }
    
    
    
    //    get all users
    public ArrayList<users> getAllUsers() {
        ArrayList<users> list = new ArrayList<>();

        try {

            String q2 = "select *from users";

            Statement stmt = this.con.createStatement();

            ResultSet set = stmt.executeQuery(q2);

            while (set.next()) 
            {
                int userid = set.getInt("userid");
                String username = set.getString("username");
                String email = set.getString("email");
                String phone_no = set.getString("phone_no");
                String address = set.getString("address");
                
                users u=new users(userid,username,email,phone_no,address);
                list.add(u);
               
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }

}
