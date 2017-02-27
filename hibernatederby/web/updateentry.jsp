<%-- 
    Document   : updateentry
    Created on : 17 Feb, 2017, 6:48:25 PM
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
        <h1>Insert data for updating</h1>
        <form action="update.jsp" method="post">
            id:<input type="text" name="id"/><br><br>
            Name:<input type="text" name="name"/><br><br>
            <input type="submit" value="Update"/> 
        </form>
    </body>
</html>

