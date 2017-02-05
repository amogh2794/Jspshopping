<%-- 
    Document   : seturl
    Created on : 30 Jan, 2017, 1:00:42 AM
    Author     : Amogh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
<%
String username=request.getParameter("username").trim();
 String password=request.getParameter("password").trim();
if(username==null || username.equals("") || password==null || password.equals(""))  {
out.print("<center><h3><br><br>Enter both username & password</h3></center>");
%>
<jsp:include page="urlrewrite.html"></jsp:include>
<%	 }
	else if(username.equals("mca") && password.equals("123"))
        {
out.print("<center><h3><br><br>Logged In <br> Click on link to see values of username & password</h3></center>");
out.print("<center><h3><a href='geturl.jsp?username="+username+"&password="+password+"'>Click</a></h3></center>");
out.println("</center><p><br><center><a href=\"urlrewrite.html\">BACK</a></center></body></html>");
        }
else {
out.print("<center><h3><br><br>wrong username & password</h3></center>");
%>
       <jsp:include page="urlrewrite.html"></jsp:include> 
        <%
	}%>
    </body>
</html>
