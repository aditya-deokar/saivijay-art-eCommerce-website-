/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.artistrycart.dao;

import com.mycompany.artistrycart.entities.category;
import com.mycompany.artistrycart.entities.users;
import com.mysql.cj.xdevapi.SessionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author adity
 */
public class categorydao {

    private SessionFactory factory;

    public categorydao(SessionFactory factory) {

        this.factory = factory;
    }

    private Connection con;

    public categorydao(Connection con) {
        this.con = con;
    }

    //    methods to insert user to data base
    public boolean saveCategory(category cate) {

        boolean f = false;
        try {
//             user->database
            String q = "insert into category(cateTitle,cateDesc) values(?,?)";

            PreparedStatement pstmt = con.prepareStatement(q);

            pstmt.setString(1, cate.getCateTitle());
            pstmt.setString(2, cate.getCateDesc());

            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return f;

    }

    public ArrayList<category> getAllCategory() {
        ArrayList<category> list = new ArrayList<>();

        try {

            String q2 = "select *from category";

            Statement stmt = this.con.createStatement();

            ResultSet set = stmt.executeQuery(q2);

            while (set.next()) {
                int cid = set.getInt("cateId");
                String ctitle = set.getString("cateTitle");
                String cdesc = set.getString("cateDesc");

                category ca = new category(cid, ctitle, cdesc);
                list.add(ca);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }
    
    
    public void deleteCategory(int cid) {
		try {
			String query = "delete from category where cateId = ?";
			PreparedStatement psmt = this.con.prepareStatement(query);
			psmt.setInt(1, cid);
			
			psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}
