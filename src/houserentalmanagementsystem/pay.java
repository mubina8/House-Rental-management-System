package houserentalmanagementsystem;




class pay {
    

    private String  ApartmentNo,TphoneNo ,date;
    private int BillID ,utilityBill,rent,gasBill,waterBill;
    
    public pay(int BillID  , String   ApartmentNo, String TphoneNo , int rent ,String date,int utilityBill,int gasBill,int waterBill)
    {
     
      this.BillID =BillID ;
      this. ApartmentNo= ApartmentNo;
      this.TphoneNo = TphoneNo ;
      this.rent =rent ;
      this.date =date ;
      this.utilityBill=utilityBill;
      this.gasBill=gasBill;
      this.waterBill=waterBill;
      
       
    }
     public int getBill(){
        return  BillID  ;
    }
    
      public String getapart(){
        return ApartmentNo;
    }
    
       public String getPhone(){
        return TphoneNo;
    }
       
     public int getRent(){
        return rent;
    }
     
      public String getdate(){
        return date ;
    }
      
    public int getUtilitybill(){
        return  utilityBill ;
    }
    
     public int getGasbill(){
        return  gasBill  ;
    }
    
    public int getWaterbill(){
        return  waterBill  ;
    }
    
}
