<%-- 
    Document   : salex_insert
    Created on : Mar 14, 2011, 11:11:28 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="myconnection.Connect,java.sql.*,crm.salex"%>
<jsp:useBean id="dd" class="crm.salex" />
<jsp:setProperty name="dd" property="*"/>
<title>JSP Page</title>
    </head>
    <body>
        <% 
        dd.insertSale();
        dd.insertUser();
        dd.insertterr();
        response.sendRedirect("Home.jsp");
                %>
    </body>
</html>
