<%-- 
    Document   : QuotaStateAssign1
    Created on : Apr 14, 2011, 4:12:54 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="q" class="crm.QuotaAssign"/>
<jsp:setProperty name="q" property="*"/>
<jsp:useBean id="qq" class="crm.QuotaTransfer"/>
<jsp:setProperty name="qq" property="*"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          q.doUpdateQuotaState();
          q.dodeleteQuotaState();
          q.insertReceiveQuota();
          
          qq.delearQuota();
          //qq.insertRecieve();
        response.sendRedirect("Home1.jsp");
        %>
    </body>
</html>
