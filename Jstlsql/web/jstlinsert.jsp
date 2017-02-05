<%-- 
    Document   : jstlinsert
    Created on : 27 Dec, 2016, 9:46:16 PM
    Author     : Amogh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

        <sql:setDataSource var="emp" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/empdb"
                           user="root" password=""/>
        
        <sql:update dataSource="${emp}" var="result">
            insert into emp values(?,?,?,?,?,?,?,?)
            <sql:param value="${param.txtid}"/>
            <sql:param value="${param.txtfnm}"/>
            <sql:param value="${param.txtlnm}"/>
            <sql:param value="${param.txtdob}"/>
            <sql:param value="${param.txtgen}"/>
             <sql:param value="${param.txtbsal}"/>
            <sql:param value="${param.txthdt}"/>
            <sql:param value="${param.txtdid}"/>
        </sql:update>
            <c:if test="${count>=1}">
                <h1>Congratulations record inserted</h1>
            </c:if>
            <sql:query dataSource="${emp}" var="result">
               select * from emp
            </sql:query>
               
            <c:forEach var="row" items="${result.rows}">
                <table border="1"><tr>
                    <td><c:out value="${row.empno}"/></td> 
                    <td><c:out value="${row.fname}"/></td>
                    <td><c:out value="${row.lname}"/></td>
                    <td><c:out value="${row.basicsalary}"/></td> 
                    <td><c:out value="${row.gender}"/></td>
                    <td><c:out value="${row.dob}"/></td>
                    <td><c:out value="${row.hiredate}"/></td>
                    <td><c:out value="${row.deptid}"/></td>
                    </tr></table>
            </c:forEach>
    