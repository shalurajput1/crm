<%-- 
    Document   : BillDetail1
    Created on : Apr 4, 2011, 9:54:36 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,myconnection.Connect" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String name=request.getParameter("bill");
          Connection con=null;
    try
    {
        Connect co=new Connect();
        con=co.setCon();
        PreparedStatement ps=con.prepareStatement("Select * from bill where b_id=?");
        ps.setString(1,name);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
           String custo=rs.getString("userid");
           String invoic=rs.getString("invoice no.");
           String bill=rs.getString("b_id");
        }
        else
        {
           response.sendRedirect("BillDetail.jsp");
        }
    }
    catch(Exception e)
    {
        System.out.println("bille detail page have error"+e);
    }
        %>
    </body>
</html>
