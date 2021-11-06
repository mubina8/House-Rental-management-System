package houserentalmanagementsystem;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Acer
 */
class User {
    

    private String Email,Name,Occupation,MobileNo;
    
    public User(String Email, String Name, String Occupation, String MobileNo)
    {
     
        this.Email=Email;
        this.Name=Name;
        this.Occupation=Occupation;
        this.MobileNo=MobileNo;
        
    }
     public String getEmail(){
        return Email;
    }
    
      public String getName(){
        return Name;
    }
    
       public String getOccupation(){
        return Occupation;
    }
       
     public String getMobileNo(){
        return MobileNo;
    }
}
