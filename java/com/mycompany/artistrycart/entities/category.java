/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.artistrycart.entities;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author adity
 */
public class category {
    
    private int  cateId;
    private String cateTitle;
    private String cateDesc;
    
    private List<product> product=new ArrayList<>();

    public category(int cateId, String cateTitle, String cateDesc) {
        this.cateId = cateId;
        this.cateTitle = cateTitle;
        this.cateDesc = cateDesc;
    }

    public category(String cateTitle, String cateDesc) {
        this.cateTitle = cateTitle;
        this.cateDesc = cateDesc;
    }
    
    

    public category(String cateTitle, String cateDesc, List<product> product) {
        this.cateTitle = cateTitle;
        this.cateDesc = cateDesc;
        this.product=product;
    }

    public category() {
    }

    @Override
    public String toString() {
        return "category{" + "cateId=" + cateId + ", cateTitle=" + cateTitle + ", cateDesc=" + cateDesc + '}';
    }
    
//    getter

    public int getCateId() {
        return cateId;
    }

    public String getCateTitle() {
        return cateTitle;
    }

    public String getCateDesc() {
        return cateDesc;
    }

    public List<product> getProduct() {
        return product;
    }
    
    
//    setter

    public void setCateId(int cateId) {
        this.cateId = cateId;
    }

    public void setCateTitle(String cateTitle) {
        this.cateTitle = cateTitle;
    }

    public void setCateDesc(String cateDesc) {
        this.cateDesc = cateDesc;
    }

    public void setProduct(List<product> product) {
        this.product = product;
    }
    
    
    
    
    
    
}

