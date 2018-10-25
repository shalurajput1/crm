<%-- 
    Document   : Quota_Model
    Created on : Apr 10, 2011, 11:03:34 AM
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
         <select name="vname" onfocus="col(this.value)" id="vname"  style="padding: 1px 0pt; width: 175px;">
            <%
            String vname=request.getParameter("id1");
             Connection con=null;
            Connect co=new Connect();
                con=co.setCon();
           try {

                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("Select * from invoice where mid='"+vname+"'");
                while (rs.next()) {
                    String k = rs.getString(5);
                   try
                            {
                        PreparedStatement ps=con.prepareStatement("select * from varient where vid='"+k+"'");
                           ResultSet rsc=ps.executeQuery();
                           while(rsc.next())
                               {
                               String cl=rsc.getString(1);
                               String cn=rsc.getString(3);

            %>
           <option value="<%=cl%>"><%=cn%></option>
                                            <%
                                            }
                                                }
                                            catch(Exception e)
                                                    {
                                                out.println("jkkk"+e);
                                                }
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
