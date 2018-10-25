<%-- 
    Document   : Customer1
    Created on : Mar 29, 2011, 5:25:10 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="r" class="crm.Customer"/>
<jsp:setProperty name="r" property="*"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        r.insertCustomer();
        response.sendRedirect("Customer_Display.jsp");
        %>
    </body>
</html>
