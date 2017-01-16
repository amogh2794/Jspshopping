<%-- 
    Document   : GuestBookEntry
    Created on : 14 Jan, 2017, 3:55:50 PM
    Author     : Amogh
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Guest Book</title>
        <s:head/>
    </head>
    <body bgcolor="#689F38">
        <table border="0" cellpadding="0" cellspacing="0" align="center" whdth="760">
            <tr>
                <td>
                    <table border="0" cellpadding="0" cellspacing="0" align="center" whdth="100%">
                        <tr>
                            <td valign="top" align="left" style="padding:0px;padding-left: 0px;padding-bottom: 0px;font:24px/30px Geprgeia;width:228px;color:white;padding-top: 0px;height:37px;">
                                Sign the Guest Book
                            </td>
                        </tr>
                    </table>         
                </td>
            </tr>
            <tr align="left" valign="top">
                <td height="20">
                    <hr/>
                </td>
            </tr>
            <tr>
                <td>
            <s:form action="GuestBookSuccess" validate="true">
                <s:textfield required="true"label="Name" name="guest"/>
                <s:textarea required="true" rows="4" cols="36" label="Message" name="message"/>
                <s:submit/>
            </s:form>
                </td>
            </tr>
        </table>
    </body>
</html>
