<%-- 
    Document   : model_req1
    Created on : Apr 16, 2011, 5:03:20 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="d" class="crm.model_req"/>
<jsp:setProperty name="d" property="*"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        d.insertModelRe();
        response.sendRedirect("Home1.jsp");
        %>
    </body>
</html>
