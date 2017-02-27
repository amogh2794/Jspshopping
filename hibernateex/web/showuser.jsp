<%-- 
    Document   : showuser
    Created on : 17 Feb, 2017, 9:52:06 AM
    Author     : Amogh
--%>

<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,com.java.*,org.hibernate.*,org.hibernate.cfg.*"%>
<%! int id;String pw;String name;String em;Session session1=null;%>
<!DOCTYPE html>
<html>
    
    <body align=center>
        <h1>Registered User Details</h1>
        <table width="220" border="1" align="center">
            <tr><th>ID</th><th>Name</th><th>Password</th><th>Email</th></tr>
            <%
                Configuration cf=new Configuration();
                cf.configure();
                SessionFactory sf=cf.buildSessionFactory();
                session1=sf.openSession();
                String SQL_QUERY="from User";
                Query query=session1.createQuery(SQL_QUERY);
                Iterator it=query.iterate();
                while(it.hasNext())
                {
                    User e=(User)it.next();
                    id=e.getId();
                    name=e.getName();
                    pw=e.getPassword();
                    em=e.getEmail();
                    %>
            <tr><td><%=id%></td><td><%=name%></td><td><%=pw%><td><%=em%></td></tr>
            <%}
                session1.close();%>
        </table>            
    </body>
</html>