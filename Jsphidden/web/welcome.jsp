<%-- 
    Document   : welcome
    Created on : 30 Jan, 2017, 12:25:12 AM
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
        String name=request.getParameter("txtName"); 
        out.print("<form action=tour.jsp>");
        out.print("<input type=hidden name=username value=\""+name+"\">");
        out.print("<br><center><input type=submit value=\"Take a Tour\"></form></center>");
        out.close();
        %>
    </body>
</html>

