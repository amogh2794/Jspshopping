<%-- 
    Document   : delemp
    Created on : 17 Feb, 2017, 6:54:00 PM
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
