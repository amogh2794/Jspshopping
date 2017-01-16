/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myApp;

/**
 *
 * @author Amogh
 */
public class GuestBook {
   public GuestBook(String guest,String message,String when){
       this.guest=guest;
       this.message=message;
       this.when=when;
   }
   public GuestBook(){
   }
   private String guest;
   private String message;
   private String when;
   public String getGuest(){
       return guest;
   }
   public void setGuest(String guest){
       this.guest=guest;
   }
   public String getMessage(){
       return message;
   }
   public void setMessage(String message){
       this.message=message;
   }
   public String getWhen(){
       return when;
   }
   public void setWhen(String when){
       this.when=when;
   }
}
   
