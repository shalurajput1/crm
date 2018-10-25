<%-- 
    Document   : SalexAjax
    Created on : Apr 1, 2011, 4:57:25 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,myconnection.Connect"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name=request.getParameter("id");
            Connection con=null;
            Connect co=new Connect();
                con=co.setCon();
           try {
                
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("Select userid from sales where userid='"+name+"'");
                if(rs.next()) {
                    String r="already_exit ";
                 %>                     <%=r%>
                   <%
                 }
                                  }
                         catch(Exception e)
                               {
                               out.println("Salesajax page have error occured"+e);
                               }
                     
            String name1=request.getParameter("id12");

           try {
               
                Statement s1 = con.createStatement();
                ResultSet rs1 = s1.executeQuery("Select sid from sales where sid='"+name1+"'");
                if(rs1.next()) {
                    String r1="already_assigned ";
                 %>                     <%=r1%>
                   <%
                 }
                                  }
                         catch(Exception e)
                               {
                               out.println("Salesajax page have error occured"+e);
                               }
                     %>
        <%  try {
                   String cust=request.getParameter("id12");
                Statement s11 = con.createStatement();
                ResultSet rs11 = s11.executeQuery("Select b_id from bill where b_id='"+cust+"'");
                if(rs11.next()) {
                    String r11="already_assigned ";
                 %>                     <%=r11%>
                   <%
                 }
                                  }
                         catch(Exception e)
                               {
                               out.println("Salesajax page have error occured"+e);
                               }
                     %>
 <%  try {
                   String cust1=request.getParameter("id10");
                Statement s11 = con.createStatement();
                ResultSet rs11 = s11.executeQuery("Select us from customer where us='"+cust1+"'");
                if(rs11.next()) {
                    String r11="already_assigned ";
                 %>                     <%=r11%>
                   <%
                 }
                                  }
                         catch(Exception e)
                               {
                               out.println("Salesajax page have error occured"+e);
                               }
                     %>
    </body>
</html>
