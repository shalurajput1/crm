<%--
    Document   : getValue
    Created on : Mar 2, 2011, 12:10:51 PM
    Author     : lpt
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
     <select name="vname" onfocus="my(this.value)" id="vname"  style="padding: 1px 0pt; width: 175px;">
            <%
            String name=request.getParameter("id");
           
            Connection con=null;
            Connect co=new Connect();
                con=co.setCon();
           try {
                
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("Select * from varient where mid='"+name+"'");
                while (rs.next()) {
                    String k = rs.getString(1);
                    String k1=rs.getString(3);
            %>
           <option value="<%=k%>"><%=k1%></option>
                                            <%
                                                   }
                                                }
                                            catch(Exception e)
                                                    {
                                                out.println("jkkk"+e);
                                                }
                                            %>
 </select>
  </body>
</html>
