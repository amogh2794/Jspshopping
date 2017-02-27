<%-- 
    Document   : register
    Created on : 9 Feb, 2017, 4:29:32 PM
    Author     : Amogh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.java.UserDao" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center;">
       <jsp:useBean id="obj" class="com.java.User">
         <jsp:setProperty property="*" name="obj"/>
        </jsp:useBean>
        <%
int i=UserDao.register(obj);
if(i>0)
out.print("<h1>You are successfully registered</h1>");
else
out.print("<h1>Not successful</h1>");
%>
<br/>
<br/>
<a href="index.jsp">Back</a>

    </body>
</html>

