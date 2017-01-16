<%-- 
    Document   : newjspGuestBookView
    Created on : 14 Jan, 2017, 4:14:57 PM
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
                            <td width="60%" valign="top" align="left" style="padding:0px;padding-left:0px;padding-bottom:0px;font:24px/30px Geprgeia;width:228px;color:white;padding-top: 0px;height:37px;">
                              View the Guest Book  
                            </td>
                            <td valign="bottom" align="right" style="font:12px/16px Georgia,serif; color:white;">
                                <b>Click<a href="<s:url action="GuestBook"/>">here</a>to sign the guest book</b>
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
                    <table border="0" cellpadding="0" cellspacing="0" align="center" whdth="100%">
                        <s:iterator value="messages">
                            <tr>
                                <td style="font:12px/16px Georgia;color:white;">
                                    On<s:property value="when"/>,<br/>
                                    <b><s:property value="guest"/>:</b>
                                    <s:property value="message"/>
                                    <br/><br/>
                                </td>
                            </tr>
                        </s:iterator>
                    </table>
                </td>
            </tr>
       </table>
    </body>
</html>
