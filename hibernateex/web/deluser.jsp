<%-- 
    Document   : deluser
    Created on : 17 Feb, 2017, 11:11:06 AM
    Author     : Amogh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center;">
        <h1>Enter details for deleting</h1>
        <form action="delete.jsp" method="post">
            ID:<input type="text" name="id"/><br><br>
            <input type="submit" name="Delete">
        </form>
    </body>
</html>
