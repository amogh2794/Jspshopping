<%-- 
    Document   : index
    Created on : 9 Feb, 2017, 4:28:32 PM
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
        <h1>Registration Using Hibernate</h1>
        <form action="register.jsp" method="post">
            Name:<input type="text" name="name"/><br><br/>
            Password:<input type="password" name="password"/><br><br/>
            Email Id:<input type="text" name="email"/><br><br/>
            <input type="submit" value="Register"/><br><br/>
        </form>
    </body>
</html>
