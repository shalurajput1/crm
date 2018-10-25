<%-- 
    Document   : SalesmanAjax
    Created on : Apr 9, 2011, 7:04:05 AM
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
                ResultSet rs = s.executeQuery("Select userid from saleman where userid='"+name+"'");
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
                ResultSet rs1 = s1.executeQuery("Select city_id from saleman where city_id='"+name1+"'");
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

    </body>
</html>
