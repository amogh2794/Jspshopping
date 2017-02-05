<%-- 
    Document   : shoppingcart
    Created on : 30 Jan, 2017, 12:41:46 AM
    Author     : Amogh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String str1=request.getParameter("item");
        String str2=request.getParameter("qty");
        String str3=request.getParameter("add");
        String str4=request.getParameter("list");
        
        if(str3!=null)
         {
             Cookie c1=new Cookie(str1,str2);
            response.addCookie(c1);%>
            <c:redirect url="/shoppingcart.html"/>
          <% // response.sendRedirect("ShoppingCart.html");
         }
         else if(str4!=null)
         {
         Cookie clientCookies[]=request.getCookies();
            for(int i=0; i<clientCookies.length;i++)
            {
                out.print("<center><table style=\"font-size: 25px;\"><tr><td><b>"+clientCookies[i].getName()+"<b></td><td>:</td><td>"+clientCookies[i].getValue()+"</td></tr></table></center></b><br>");
            }
         }
         out.println("</center><p><br><center><a href=\"shoppingcart.html\">BACK</a></center>");
      out.close();
        %>
    </body>
</html>

