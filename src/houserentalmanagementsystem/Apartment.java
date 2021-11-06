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
class Apartment {
    
    private String Email,HouseName,Description,type,Address,city,ApartmentNo;
    private int rent,utilityBill,gasBill,waterBill;
     
      public Apartment(String ApartmentNo,String Email,String HouseName,String Description,int rent,String type,String Address,int utilityBill,int gasBill,int waterBill,String city)
    {
        this.ApartmentNo=ApartmentNo;
        this.Email=Email;
        this.HouseName=HouseName;
        this.Description=Description;
        this.rent=rent;
        this.type=type;
        this.Address=Address;
        this.utilityBill=utilityBill;
        this.gasBill=gasBill;
        this.waterBill=waterBill;
        this.city=city;
    }
    public String getApartmentNo(){
        return ApartmentNo;
    }
    public String getEmail(){
        return Email;
    }
    public String getHouseName(){
        return HouseName;
    }
    
    public String getDescription(){
       return Description;
    }
    public int getrent(){
        return rent;
    }
       
    public String gettype(){
        return type;
    }
    public String getAddress(){
        return Address;
    }
    
    public int getutilityBill(){
        return utilityBill;
    }
    public int getgasBill(){
        return rent;
    }
     public int getwaterBill(){
        return waterBill;
    }
   public String getcity(){
        return city;
    }
    
}
