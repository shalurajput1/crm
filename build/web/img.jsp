<%-- 
    Document   : img
    Created on : Apr 7, 2011, 11:54:03 PM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page  import="myconnection.Connect,java.sql.*"%>
<jsp:useBean id="dd" class="crm.Login"/>
    <jsp:setProperty name="dd" property="*"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String n=null;
        try{
            Connection con=null;
            Connect co=new Connect();
            con=co.setCon();
            PreparedStatement ps=con.prepareStatement("Select name from img where iid='1'");
           ResultSet rs=ps.executeQuery();
            if(rs.next())
           {
                n=rs.getString("name");
           }
        }
        catch(Exception e)
                {
            System.out.println(e);
            }
        %>
    <img src="images/<%=n%>">
    </body>
</html>
