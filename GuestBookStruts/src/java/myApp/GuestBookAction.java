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
import java.util.Date;
import java.util.Vector;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;
public class GuestBookAction extends ActionSupport{
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    private String guest;
    private String message;
    private String when= new Date().toString();
    private Vector messages=new Vector();
    
    @Override
    public String execute(){
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn=DriverManager.getConnection("jdbc:mysql://localhost/GuestBook","root","");
        stmt=conn.createStatement();
        String query="insert into GuestBook(VisitorName,Message,MessageDate) values('"+getGuest()+"','"+getMessage()+"','"+getWhen()+"')";
        stmt.executeUpdate(query);
        query="select * from GuestBook";
        rs=stmt.executeQuery(query);
        while(rs.next()){
            messages.add(new GuestBook(rs.getString("VisitorName"),rs.getString("Message"),rs.getString("MessageDate")));
           }
        }
    catch(ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException e){
    }
    return SUCCESS;
   }
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
   public Vector getMessages(){
       return messages;
   }
   public void setMessage(Vector messages){
       this.messages=messages;
   }
}
