package houserentalmanagementsystem;




class fees {
    

    private String  ApartmentNo,MainDescription ,date;
    private int MainNo ,Amount ;
    
    public fees(int MainNo  , String   ApartmentNo, String MainDescription , int Amount ,String date)
    {
     
      this.MainNo =MainNo ;
      this. ApartmentNo= ApartmentNo;
      this.MainDescription = MainDescription ;
      this.Amount =Amount ;
      this.date =date ;
;
      
       
    }
     public int getno(){
        return  MainNo  ;
    }
    
      public String getapart(){
        return ApartmentNo;
    }
    
       public String getdesc(){
        return MainDescription;
    }
       
     public int getAmount(){
        return Amount;
    }
     
      public String getdate(){
        return date ;
    }
}
