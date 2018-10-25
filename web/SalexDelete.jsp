<%-- 
    Document   : SalexDelete
    Created on : Mar 27, 2011, 10:13:34 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import ="myconnection.Connect,java.sql.*,crm.SalexDelete" %>
<jsp:useBean id="d" class="crm.SalexDelete"/>
<jsp:setProperty name="d" property="*"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String che[]=request.getParameterValues("check");
        d.delete(che);
      response.sendRedirect("Salesmanager_Display.jsp");



        %>
    </body>
</html>
