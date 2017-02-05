<%-- 
    Document   : jstlddelete
    Created on : 27 Dec, 2016, 9:44:22 PM
    Author     : Amogh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Operation</title>
    </head>
    <body>
         <sql:setDataSource var="emp" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/empdb"
                           user="root" password=""/>
        <form action="jstldelete.jsp">
            Employee ID:<input type="text" name="txtid"><br> <br>
            Employee FName:<input type="text" name="txtfnm"><br> <br>
            <input type="submit" value="Delete">
        </form>
                    
        <sql:update dataSource="${emp}" var="result">
            delete from emp where empno='${param.txtid}' 
        </sql:update>
            
                <h1>record deleted</h1>
            
            
  
    </body>
</html>
