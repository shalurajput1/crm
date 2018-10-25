<%--
    Document   : Color
    Created on : Mar 16, 2011, 3:37:58 AM
    Author     : Rohit Pachouli
--%>
<%@page import="java.util.*,java.sql.*,myconnection.Connect" %>
<jsp:useBean id="dd" class="crm.State"/>
<jsp:setProperty name="dd" property="*"/>
<html><head>
<!-- base " -->
<title></title>
<link rel="SHORTCUT ICON" href="http://www.sagarauto.com/images/others/favicon.ico">
<link title="stylesheet" type="text/css" rel="stylesheet" href="signup_files/common.css">
<link title="stylesheet" type="text/css" rel="stylesheet" href="signup_files/mycar.css">
<link rel="stylesheet" type="text/css" href="signup_files/theme_maruti2.css">
<link rel="shortcut icon" type="image/x-icon" href="css/dropdown/themes/vimeo.com/images/favicon.ico" />
<link href="css/dropdown/themes/vimeo.com/helper.css" media="screen" rel="stylesheet" type="text/css" />
<!-- Beginning of compulsory code below -->
<link href="css/dropdown/dropdown.css" media="screen" rel="stylesheet" type="text/css" />
<link href="css/dropdown/themes/vimeo.com/default.advanced.css" media="screen" rel="stylesheet" type="text/css" />
<!--[if !IE]>
<![endif]-->
<script language="javascript" type="text/javascript" src="signup_files/common.js"></script>
<script language="javascript" type="text/javascript" src="signup_files/validate.js"></script>

</head><body>
<div id="outerbody">
<div id="innerbody">
<!-- header -->
<div id="header">
<div id="headUpper">
<div id="topLogin">
    <%
     request.getSession(true);
     String s12=(String)session.getAttribute("name");
      String nam=dd.sessionState(s12);
      String k=null;
try{
          ArrayList ar=dd.selectState(nam);
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

      
Welcome <%=k%> &nbsp;|&nbsp;
<a href="Login.jsp" class="lHome">Login</a>&nbsp;|&nbsp;
<a href="Logout1.jsp" class="lHome">Logout</a>&nbsp;|&nbsp;
<a href="Home.jsp" class="lHome">Home</a></div>
<div id="makelogoU"><div id="makelogo"><img src="signup_files/imagesm.jpg"  alt="Logo of Maruti Suzuki" title="Logo of Maruti Suzuki"> </div></div>
<div align="right"><div id="makelogo"><img src="signup_files/imagesm.jpg" alt="Logo of Maruti Suzuki" title="Logo of Maruti Suzuki"> </div></div>
<!-- Begin Banner Code -->
<!-- End Banner Code -->
</div>
    <ul id="nav" class="dropdown dropdown-horizontal">
	<li><a href="Home1.jsp">Home</a></li>
	
	
	<li class="dir">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Customer
		<ul>
			<li><a href="Customer.jsp">New Customer</a>
		       </li>
			<li><a href="Customer_Display.jsp">Customer Update</a>
			</li>
                         
			
		</ul>
	</li>
	<li class="dir">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Status
			<ul>
                            <li><a href="Quota_transferShow.jsp">Transfer</a>
		       </li>
			<li><a href="Quota_Recieve_Show.jsp">Recieve</a>
			</li>

		</ul></li>
        <li class="dir">&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bill Detail
                <ul><li><a href="BillDetail.jsp">Bill Detail</a>
		       </li>
			

		</ul></li>
          <li><a href="QuotaSales.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inventory</a></li>
	<li><a href="Model_Req.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Demand</a></li>
        <li><a href="ShowRoom_Sales.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sales Status</a></li>
	<li><a href="ShowRoom.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ShowRoom</a>

	</li>
</ul>
    </div>
<!-- header -->
<div id="mainbodyUp">
<div id="mainBody">
<div id="innerMain" style="padding-bottom: 10px;">

	<div id="mainCol" class="bgcolorA">
		<div id="loginTop">
			<div id="mycarTopRt" class="txtcolorB">
			<h1 class="mycarTophd">Registration New Sales Manager </h1>
			<div class="mycarList">
				<div class="mycarLstTxt">Get Please Collect the new Sales Manager information </div>
				<div class="mycarLstTxt">Get information and fill the form carefully </div>
				<div class="mycarLstTxt">Assign User Id and Password to new Sales Manager </div>
			</div>
			<div class="mycarBothd">Just get Started Now!</div>
			</div>
						<div class="mycarTopImg" style="float: left; height: 120px; width: 333px; margin-top: 5px;"><img src="signup_files/mycar_image.jpg" alt="Now All your Car Worries are Gone!"></div>
                </div>

		<div id="loginBotm" style="height: 364px;">
			<div class="loginInner" style="padding-top:50px;">


			</div>
		</div>

	</div>
</div>
</div>
</div>
<!-- footer -->
<div id="footer">

<!-- footer -->
</div>
</div>
    </div>
</body></html>


