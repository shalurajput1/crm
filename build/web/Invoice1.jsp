<%-- 
    Document   : Invoice1
    Created on : Mar 26, 2011, 6:18:28 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="crm.Invoice" %>
<jsp:useBean id="dd" class="crm.Invoice"/>
<jsp:setProperty name="dd" property="*"/>
<jsp:useBean id="a" class="crm.QuotaAssign"/>
<jsp:setProperty name="a" property="*"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        a.serchAssign();
        dd.insertInvoice();
        dd.insertMargin();
        response.sendRedirect("Home.jsp");
        %>
    </body>
</html>
