/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package houserentalmanagementsystem;

/**
 *
 * @author Acer
 */

public class Tenant {
    
     private String ApartmentNo,Email,TEmail,TenantName,TOccupation,TphoneNo,TenantType;
    
      public Tenant(String ApartmentNo,String Email,String TEmail,String TenantName,String TOccupation,String TphoneNo,String TenantType)
    {
        this.ApartmentNo=ApartmentNo;
        this.Email=Email;
        this.TEmail=TEmail;
        this.TenantName=TenantName;
        this.TOccupation=TOccupation;
        this.TphoneNo=TphoneNo;
        this.TenantType=TenantType;
    }
    public String getApartmentNo(){
        return ApartmentNo;
    }
     public String getEmail(){
        return Email;
    }
    public String getTEmail(){
        return TEmail;
    }
    
      public String getTenantName(){
        return TenantName;
    }
    
       public String getTOccupation(){
        return TOccupation;
    }
       
     public String getTphoneNo(){
        return TphoneNo;
    }
  public String getTenantType(){
        return TenantType;
    }
    
}
