<%-- 
    Document   : Bill1
    Created on : Apr 4, 2011, 7:49:30 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*,java.sql.*,myconnection.Connect" %>
<jsp:useBean id="dd" class="crm.Bill"/>
<jsp:setProperty name="dd" property="*"/>
<jsp:useBean id="q" class="crm.QuotaAssign"/>
<jsp:setProperty name="q" property="*"/>
<jsp:useBean id="d" class="crm.State"/>
<jsp:setProperty name="d" property="*"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
     request.getSession(true);
     String s12=(String)session.getAttribute("name");
      String nam=d.sessionState(s12);
      String k=null;
      String voic=request.getParameter("in");
try{
          ArrayList ar=d.selectState(nam);
          Iterator i=ar.iterator();

                   while(i.hasNext())
                       {
                      String o=(String)i.next();
                        k=(String)i.next();

               } }
           catch(Exception e)
                   {
               out.println("login country page have error"+e);
               }
            %>

        <%
        dd.insertBill();
        q.doupdateSale(k,voic);
        response.sendRedirect("Home1.jsp");
        %>
    </body>
</html>
