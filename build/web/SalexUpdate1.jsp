<%-- 
    Document   : SalexUpdate1
    Created on : Mar 28, 2011, 6:56:07 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="crm.SalexUpdate" %>
<jsp:useBean id="dd" class="crm.SalexUpdate"/>
<jsp:setProperty name="dd" property="*"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        dd.doUp();
        response.sendRedirect("Salesmanager_Display.jsp");
        %>
    </body>
</html>
