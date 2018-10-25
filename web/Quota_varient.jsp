<%-- 
    Document   : Quota_varient
    Created on : Apr 10, 2011, 11:08:19 AM
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
    </head><body>
    <select name="color" onfocus="quota(this.value)" id="color"  style="padding: 1px 0pt; width: 175px;">
            <%
            String cname=request.getParameter("id2");
             Connection con=null;
            Connect co=new Connect();
                con=co.setCon();
           try {

                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("Select * from invoice where vid='"+cname+"'");
                while (rs.next()) {
                    String k = rs.getString(6);
                    try
                            {
                        PreparedStatement ps=con.prepareStatement("select * from colors where cid='"+k+"'");
                           ResultSet rsc=ps.executeQuery();
                           while(rsc.next())
                               {
                               String cl=rsc.getString(1);
                               String cn=rsc.getString(2);

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
 </select></body>
</html>
