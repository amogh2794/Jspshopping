<%-- 
    Document   : tour
    Created on : 30 Jan, 2017, 12:25:49 AM
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
           String name=request.getParameter("username");
       out.print("<center><h2>Sorry "+name);
        out.print("</h2><br>Site is down for routine maintainance, Plz visit again later....");
        out.println("<p><br><a href=\"hidden.html\">BACK</a></center>");
        out.close();
       %>
    </body>
</html>

