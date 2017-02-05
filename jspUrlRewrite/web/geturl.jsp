<%-- 
    Document   : geturl
    Created on : 30 Jan, 2017, 1:02:08 AM
    Author     : Amogh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String username=request.getParameter("username").trim();
String password=request.getParameter("password").trim();
out.print("<center><h2><br><br>Username : "+username+"<br>Password  :  "+password+"</h2></center>");
out.println("</center><p><br><center><a href=\"urlrewrite.html\">BACK</a></center></body></html>");

       %>
    </body>
</html>

