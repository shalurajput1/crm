<%-- 
    Document   : Quota_terr
    Created on : Apr 10, 2011, 6:46:12 AM
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
        <select name="mname"  id="mname"  style="padding: 1px 0pt; width: 175px;">
            <%
            String name=request.getParameter("id");

            Connection con=null;
            Connect co=new Connect();
                con=co.setCon();
           try {

                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("Select * from invoice where sid='"+name+"'");
                while (rs.next()) {
                    String k = rs.getString(4);
                    try{
                        PreparedStatement ps=con.prepareStatement("Select * from porduct_id where mid='"+k+"'");
                        ResultSet rs1=ps.executeQuery();
                        while(rs1.next())
                            {
                            String m=rs1.getString(1);
                            String mn=rs1.getString(2);
                            %>
           <option value="<%=m%>"><%=mn%></option>
                                            <%
                                        }
                                                }
                                            catch(Exception e)
                                                    {
                                                out.println("jkkk"+e);
                                                }           }
                                                }
                                            catch(Exception e)
                                                    {
                                                out.println("jkkk"+e);
                                                }
                                            %>
 </select>
 
    </body>
</html>
