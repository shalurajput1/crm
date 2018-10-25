<%-- 
    Document   : Customer_Delete
    Created on : Mar 29, 2011, 5:42:40 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="d" class="crm.CustomerDelete"/>
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
      response.sendRedirect("Customer_Display.jsp");
        %>
    </body>
</html>
