<%-- 
    Document   : update
    Created on : 17 Feb, 2017, 6:43:17 PM
    Author     : Amogh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.java.*,org.hibernate.*,org.hibernate.cfg.*"%>
<%! int id;String name;Session session1=null;%>   
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center;">
        <h1>Before updation</h1><br>
<jsp:include page="show.jsp"/><br/>
<h1>After Updating</h1>
    <table width="220" border="1" align="center">
        <tr><th>ID</th>
            <th>Name</th>
        </tr>   
    <% int i=Integer.parseInt(request.getParameter("id"));
    String name=request.getParameter("name");
    Configuration cf=new Configuration();
    cf.configure();
    SessionFactory sf=cf.buildSessionFactory();
    session1=sf.openSession();
    emp emp=null;
    session1.beginTransaction();
    emp=(emp) session1.get(emp.class,i);
    emp.setName(name);
    session1.update(emp);
    session1.getTransaction().commit();
    String SQL_QUERY="from emp";
    Query query=session1.createQuery(SQL_QUERY);
    Iterator it=query.iterate();
    while(it.hasNext())
    {
     emp e=(emp)it.next();
     id=e.getId();
     name=e.getName();
     %>
     <tr><td><%=id%></td>
         <td><%=name%></td>
     </tr>
    <%}session1.close();%>
    </table>
    </body>
</html>
