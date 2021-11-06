/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package houserentalmanagementsystem;

import java.sql.*;
import javax.swing.*;
public class JavaConnect {
    static Connection conn=null;
    
    
   public  static Connection ConnecrDb()
   { 
       try{
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           conn = DriverManager.getConnection(
                    "jdbc:sqlserver://localhost:1433;databaseName=LandLordDatabase;selectMethod=cursor", "sa", "123456");
           
           
           /* JOptionPane.showMessageDialog(null, "Connection Established");*/
              
           
           
           
            System.out.println("DATABASE NAME IS:" + conn.getMetaData().getDatabaseProductName());

            Statement statement = conn.createStatement();
            ResultSet resultSet = statement
                    .executeQuery("SELECT Email FROM LandLord");
            
            
            while (resultSet.next()) {
                
                System.out.println("LandLord NAME:" + 
                        resultSet.getString("Email"));
            }
            return conn;
                
          
                
         
       }
       catch(Exception e)
       {
           JOptionPane.showMessageDialog(null, e);
           return null;
       }
       
   }
   
   
     public static void main(String[] args) {
        JavaConnect cnObj = new JavaConnect();
        cnObj.ConnecrDb();
        registration rg=new registration();
        rg.setVisible(true);
        
    } 
}
