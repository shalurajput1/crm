<%-- 
    Document   : Invo
    Created on : Apr 6, 2011, 8:16:58 AM
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
        <% String name=request.getParameter("id1");
        Connection con=null;
                Connect co=new Connect();
                con=co.setCon();
            try {
                
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("Select * from invoice where vid='"+name+"'");
                while (rs.next()) {
                    String k = rs.getString(1);

            %>
           
<input type="text" id="in" name="in" value= "<%=k%>" style="padding: 1px 0pt; width: 175px;">
       <%    }
} catch (Exception e) {
    out.println("eeeeeee" + e);
}
%>

    </body>
</html>
