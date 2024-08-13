/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.artistrycart.entities;



/**
 *
 * @author adity
 */
public class product {
    
    private int pId;
    private String pName;
    private String pDesc;
    private float pPrice;
    private int pDiscount;
    private int pQuantity;
    private String pImg1;
    private String pImg2;
    private String pImg3;
    private String pImg4;
    private int categoryId;
    private String pType;
    
    private category category;

   
        

    public product(int pId, String pName, String pDesc, float pPrice, int pDiscount, int pQuantity, String pImg1, String pImg2, String pImg3, String pImg4,int categoryId, category category ) {
        this.pId = pId;
        this.pName = pName;
        this.pDesc = pDesc;
        this.pPrice = pPrice;
        this.pDiscount = pDiscount;
        this.pQuantity = pQuantity;
        this.pImg1 = pImg1;
        this.pImg2 = pImg2;
        this.pImg3 = pImg3;
        this.pImg4 = pImg4;
        this.categoryId=categoryId;
        this.category = category;
      
    }

    public product(String pName, String pDesc, float pPrice, int pDiscount, int pQuantity, String pImg1, String pImg2, String pImg3, String pImg4) {
        this.pName = pName;
        this.pDesc = pDesc;
        this.pPrice = pPrice;
        this.pDiscount = pDiscount;
        this.pQuantity = pQuantity;
        this.pImg1 = pImg1;
        this.pImg2 = pImg2;
        this.pImg3 = pImg3;
        this.pImg4 = pImg4;
    }

    public product(String pName, String pDesc, float pPrice, int pDiscount, int pQuantity, String pImg1, String pImg2, String pImg3, String pImg4, category category) {
        this.pName = pName;
        this.pDesc = pDesc;
        this.pPrice = pPrice;
        this.pDiscount = pDiscount;
        this.pQuantity = pQuantity;
        this.pImg1 = pImg1;
        this.pImg2 = pImg2;
        this.pImg3 = pImg3;
        this.pImg4 = pImg4;
        this.category = category;
    }

    public product(int pId, String pName, String pDesc, float pPrice, int pDiscount, int pQuantity, String pImg1, String pImg2, String pImg3, String pImg4) {
        this.pId = pId;
        this.pName = pName;
        this.pDesc = pDesc;
        this.pPrice = pPrice;
        this.pDiscount = pDiscount;
        this.pQuantity = pQuantity;
        this.pImg1 = pImg1;
        this.pImg2 = pImg2;
        this.pImg3 = pImg3;
        this.pImg4 = pImg4;
    }

    public product(String pName, String pDesc, float pPrice, int pDiscount, int pQuantity, String pImg1, String pImg2, String pImg3, String pImg4, int categoryId) {
        this.pName = pName;
        this.pDesc = pDesc;
        this.pPrice = pPrice;
        this.pDiscount = pDiscount;
        this.pQuantity = pQuantity;
        this.pImg1 = pImg1;
        this.pImg2 = pImg2;
        this.pImg3 = pImg3;
        this.pImg4 = pImg4;
        this.categoryId = categoryId;
    }

    
    
        
        
        
    

    public product() {
    }
    
//    getter

    public int getpId() {
        return pId;
    }

    public String getpName() {
        return pName;
    }

    public String getpDesc() {
        return pDesc;
    }

   

    public float getpPrice() {
        return pPrice;
    }

    public int getpDiscount() {
        return pDiscount;
    }

    public int getpQuantity() {
        return pQuantity;
    }

    public category getCategory() {
        return category;
    }
    
    
//    setter

    public void setpId(int pId) {
        this.pId = pId;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public void setpDesc(String pDesc) {
        this.pDesc = pDesc;
    }

   

    public void setpPrice(float pPrice) {
        this.pPrice = pPrice;
    }

    public void setpDiscount(int pDiscount) {
        this.pDiscount = pDiscount;
    }

    public void setpQuantity(int pQuantity) {
        this.pQuantity = pQuantity;
    }

    public void setCategory(category category) {
        this.category = category;
    }

    public String getpImg1() {
        return pImg1;
    }

    public void setpImg1(String pImg1) {
        this.pImg1 = pImg1;
    }

    public String getpImg2() {
        return pImg2;
    }

    public void setpImg2(String pImg2) {
        this.pImg2 = pImg2;
    }

    public String getpImg3() {
        return pImg3;
    }

    public void setpImg3(String pImg3) {
        this.pImg3 = pImg3;
    }

    public String getpImg4() {
        return pImg4;
    }

    public void setpImg4(String pImg4) {
        this.pImg4 = pImg4;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getpType() {
        return pType;
    }

    public void setpType(String pType) {
        this.pType = pType;
    }
   
    
    
    
    
    
//    to string

    @Override
    public String toString() {
        return "product{" + "pId=" + pId + ", pName=" + pName + ", pDesc=" + pDesc + ", pPrice=" + pPrice + ", pDiscount=" + pDiscount + ", pQuantity=" + pQuantity + ", pImg1=" + pImg1 + ", pImg2=" + pImg2 + ", pImg3=" + pImg3 + ", pImg4=" + pImg4 + '}';
    }

    
    
    
    
}


