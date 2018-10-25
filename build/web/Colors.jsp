<%-- 
    Document   : colors
    Created on : Mar 16, 2011, 4:39:34 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,crm.Color" %>
<jsp:useBean id="cc" class="crm.Color"/>
<jsp:setProperty name="cc" property="*"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        cc.colorEntry();
        %>
    </body>
</html>
