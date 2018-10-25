<%-- 
    Document   : Login1
    Created on : Mar 15, 2011, 10:02:59 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,myconnection.Connect,crm.Login" %>
<jsp:useBean id="dd" class="crm.Login"/>
    <jsp:setProperty name="dd" property="*"/>
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try{
        String name=request.getParameter("userid");
        String password=request.getParameter("pass");
        String type=request.getParameter("cat");
        if((name!=null || name!=" ")&& (password!=null ||  password!=" ")){
        String category=dd.getLogin(type,name,password);
        if(category.matches("admin"))
           {
            session=request.getSession(true);
            session.setAttribute("name",name);
            response.sendRedirect("Home.jsp");
            }
        else if(category.matches("SALES MANAGER"))
            {
            session=request.getSession(true);
            session.setAttribute("name",name);
            response.sendRedirect("Home1.jsp");
            }
        else
            {
            response.sendRedirect("Login.jsp");
            }
              out.println(name+"hjhkh");}}catch(Exception e)
        {
                  out.println(e);
          }%>
    </body>
</html>
