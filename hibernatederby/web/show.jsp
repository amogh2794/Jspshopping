<%-- 
    Document   : show
    Created on : 17 Feb, 2017, 10:46:40 AM
    Author     : Amogh
--%>

<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,com.java.*,org.hibernate.*,org.hibernate.cfg.*"%>
<%! int id;String pw;String name;Session session1=null;%>
<!DOCTYPE html>
<html>    
    <body style="text-align: center;">
        <h1>Employee Details</h1>
        <table width="220" border="1" align="center">
            <tr><th>ID</th><th>Name</th></tr>
            <%
                Configuration cf=new Configuration();
                cf.configure();
                SessionFactory sf=cf.buildSessionFactory();
                session1=sf.openSession();
                String SQL_QUERY="from emp";
                Query query=session1.createQuery(SQL_QUERY);
                Iterator it=query.iterate();
                while(it.hasNext())
                {
                    emp e=(emp)it.next();
                    id=e.getId();
                    name=e.getName();                   
                    %>
            <tr><td><%=id%></td><td><%=name%></td></tr>
            <%}
                session1.close();%>
        </table>            
    </body>
</html>
