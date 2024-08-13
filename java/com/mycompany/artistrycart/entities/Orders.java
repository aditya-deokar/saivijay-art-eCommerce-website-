/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.artistrycart.entities;

/**
 *
 * @author adity
 */
public class Orders extends product {

    private int orderId;
    private int uId;
    private int proId;
    private int quantity;
    private String date;
    private String RPorderId;
    private String RPpaymentId;
    private String RPstatus;
    private String RPsign;
    private String RPcreateon;

    public Orders() {
    }

    public Orders(String RPorderId, String RPpaymentId, String RPsign) {
        this.RPorderId = RPorderId;
        this.RPpaymentId = RPpaymentId;
        this.RPsign = RPsign;
    }

    public Orders(int orderId, int uId, int proId, String RPorderId, String RPpaymentId, String RPstatus) {
        this.orderId = orderId;
        this.uId = uId;
        this.proId = proId;
        this.RPorderId = RPorderId;
        this.RPpaymentId = RPpaymentId;
        this.RPstatus = RPstatus;
    }

    
    
    public Orders(int orderId, int uId, int proId, int quantity, String RPorderId) {
        this.orderId = orderId;
        this.uId = uId;
        this.proId = proId;
        this.quantity = quantity;
        this.RPorderId = RPorderId;
    }

    public Orders(int uId, int proId, int quantity, String date) {
        this.uId = uId;
        this.proId = proId;
        this.quantity = quantity;
        this.date = date;
    }

    public Orders(int uId, int proId, int quantity) {
        this.uId = uId;
        this.proId = proId;
        this.quantity = quantity;
    }

    public String getRPorderId() {
        return RPorderId;
    }

    public void setRPorderId(String RPorderId) {
        this.RPorderId = RPorderId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getuId() {
        return uId;
    }

    public String getRPpaymentId() {
        return RPpaymentId;
    }

    public void setRPpaymentId(String RPpaymentId) {
        this.RPpaymentId = RPpaymentId;
    }

    public String getRPstatus() {
        return RPstatus;
    }

    public void setRPstatus(String RPstatus) {
        this.RPstatus = RPstatus;
    }

    public String getRPsign() {
        return RPsign;
    }

    public void setRPsign(String RPsign) {
        this.RPsign = RPsign;
    }

    public String getRPcreateon() {
        return RPcreateon;
    }

    public void setRPcreateon(String RPcreateon) {
        this.RPcreateon = RPcreateon;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getProId() {
        return proId;
    }

    public void setProId(int proId) {
        this.proId = proId;
    }

    @Override
    public String toString() {
        return "Order{" + "orderId=" + orderId + ", uId=" + uId + ", proId=" + proId + ", quantity=" + quantity + ", date=" + date + '}';
    }

    @Override
    public void setpType(String pType) {
        super.setpType(pType); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getpType() {
        return super.getpType(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setCategoryId(int categoryId) {
        super.setCategoryId(categoryId); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public int getCategoryId() {
        return super.getCategoryId(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setpImg4(String pImg4) {
        super.setpImg4(pImg4); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getpImg4() {
        return super.getpImg4(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setpImg3(String pImg3) {
        super.setpImg3(pImg3); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getpImg3() {
        return super.getpImg3(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setpImg2(String pImg2) {
        super.setpImg2(pImg2); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getpImg2() {
        return super.getpImg2(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setpImg1(String pImg1) {
        super.setpImg1(pImg1); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getpImg1() {
        return super.getpImg1(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setCategory(com.mycompany.artistrycart.entities.category category) {
        super.setCategory(category); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setpQuantity(int pQuantity) {
        super.setpQuantity(pQuantity); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setpDiscount(int pDiscount) {
        super.setpDiscount(pDiscount); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setpPrice(float pPrice) {
        super.setpPrice(pPrice); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setpDesc(String pDesc) {
        super.setpDesc(pDesc); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setpName(String pName) {
        super.setpName(pName); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setpId(int pId) {
        super.setpId(pId); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public com.mycompany.artistrycart.entities.category getCategory() {
        return super.getCategory(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public int getpQuantity() {
        return super.getpQuantity(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public int getpDiscount() {
        return super.getpDiscount(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public float getpPrice() {
        return super.getpPrice(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getpDesc() {
        return super.getpDesc(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getpName() {
        return super.getpName(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public int getpId() {
        return super.getpId(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    protected void finalize() throws Throwable {
        super.finalize(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public int hashCode() {
        return super.hashCode(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
    
    

}
