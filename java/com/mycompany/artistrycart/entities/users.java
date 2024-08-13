/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.artistrycart.entities;
import java.sql.*;
/**
 *
 * @author adity
 */
public class users {
    
    
    
    private int userid;
    private String username;
    private String email;
    private String password;
    private String phone_no;
    private String address;
    private String usertype;
     private String state;
    private String city;
    private String pincode;
    private String altmobNo;

    public users(int userid, String username, String email, String phone_no, String address) {
        this.userid = userid;
        this.username = username;
        this.email = email;
        this.phone_no = phone_no;
        this.address = address;
    }

        
    
    public users(String state, String city, String pincode, String altmobNo) {
        this.state = state;
        this.city = city;
        this.pincode = pincode;
        this.altmobNo = altmobNo;
    }
    
    
    
    
    

    public users(int userid, String username, String email, String password, String phone_no, String address, String usertype) {
        this.userid = userid;
        this.username = username;
        this.email = email;
        this.password = password;
        this.phone_no = phone_no;
        this.address = address;
        this.usertype = usertype;
    }

    public users(String username, String email, String password, String phone_no, String address) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.phone_no = phone_no;
        this.address = address;
    }

    public users() {
    }

    public users(int userid, String username) {
        this.userid = userid;
        this.username = username;
    }

    
    
    @Override
    public String toString() {
        return "users{" + "userid=" + userid + ", username=" + username + ", email=" + email + ", password=" + password + ", phone_no=" + phone_no + ", address=" + address + ", usertype=" + usertype + '}';
    }
    
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getAltmobNo() {
        return altmobNo;
    }

//    getter and setter
    public void setAltmobNo(String altmobNo) {    
        this.altmobNo = altmobNo;
    }

    public int getUserid() {
        return userid;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getPhone_no() {
        return phone_no;
    }

    public String getAddress() {
        return address;
    }

    public String getUsertype() {
        return usertype;
    }
    
    
//    setter

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhone_no(String phone_no) {
        this.phone_no = phone_no;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }
    
    
    
}
