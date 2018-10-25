<%-- 
    Document   : Logout
    Created on : Apr 15, 2011, 11:57:33 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        session=request.getSession(true);
        session.removeAttribute("name");
        response.sendRedirect("Login.jsp");
        %>
    </body>
</html>
