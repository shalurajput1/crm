<%-- 
    Document   : QuotaAssign1
    Created on : Apr 12, 2011, 1:22:48 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="q" class="crm.QuotaAssign"/>
<jsp:setProperty name="q" property="*"/>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       
        q.insertQuotaAssign();
        q.insertStateQuota();
        q.doup();
        response.sendRedirect("Home.jsp");
        %>
    </body>
</html>
