/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.artistrycart.entities;

/**
 *
 * @author adity
 */
public class cart extends product{
    
    private int cartid;
    private int pid;
    private float price;
    private String pname;
    private String pimg;
    private int quantity;
    
    public cart()
    {
    
    }

    public cart(int pid, float price, String pname, String pimg, int quantity) {
        this.pid = pid;
        this.price = price;
        this.pname = pname;
        this.pimg = pimg;
        this.quantity = quantity;
    }
    
    

    public cart(int pId, String pName, String pDesc, float pPrice, int pDiscount, int pQuantity, String pImg1, String pImg2, String pImg3, String pImg4) {
        super(pId, pName, pDesc, pPrice, pDiscount, pQuantity, pImg1, pImg2, pImg3, pImg4);
    }

    public cart(int quantity, int pId, String pName, String pDesc, float pPrice, int pDiscount, int pQuantity, String pImg1, String pImg2, String pImg3, String pImg4) {
        super(pId, pName, pDesc, pPrice, pDiscount, pQuantity, pImg1, pImg2, pImg3, pImg4);
        this.quantity = quantity;
    }
    
    

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getCartid() {
        return cartid;
    }

    public void setCartid(int cartid) {
        this.cartid = cartid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPimg() {
        return pimg;
    }

    public void setPimg(String pimg) {
        this.pimg = pimg;
    }
    
    
    
}
