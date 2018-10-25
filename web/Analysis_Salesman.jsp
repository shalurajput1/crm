<%-- 
    Document   : Analysis_Salesman
    Created on : Apr 17, 2011, 5:17:59 AM
    Author     : Rohit Pachouli
--%>

<%@page import="java.util.*,java.sql.*,myconnection.Connect" %>
<jsp:useBean id="dd" class="crm.State"/>
<jsp:setProperty name="dd" property="*"/>
<html><head>
<!-- base " -->
<title>SalesManager Analysis</title>
<link rel="stylesheet" href="calendar/dhtmlgoodies_calendar.css?random=20051112" media="screen"/>
<script type="text/javascript" src="calendar/dhtmlgoodies_calendar.js?random=20060118"></script>
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
<script language="javascript">
    function fun()
    {
        if(document.getElementById('state').value==0)
            alert("plz enter show Room");
       else if(document.getElementById('fdate').value=="")
            alert("plz enter first date");
        else if(document.getElementById('sdate').value=="")
            alert("plz enter second date");
        else
            document.loginForm.submit();
    }
 </script>

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

            %>
Welcome <%=s12%> &nbsp;|&nbsp;
<a href="" class="lHome">Login</a>&nbsp;|&nbsp;
<a href="" class="lHome">Home</a></div>
<div id="makelogoU"><div id="makelogo"><img src="signup_files/imagesm.jpg"  alt="Logo of Maruti Suzuki" title="Logo of Maruti Suzuki"> </div></div>
<div align="right"><div id="makelogo"><img src="signup_files/imagesm.jpg" alt="Logo of Maruti Suzuki" title="Logo of Maruti Suzuki"> </div></div>
<!-- Begin Banner Code -->
<!-- End Banner Code -->
</div>
    <ul id="nav" class="dropdown dropdown-horizontal">
	<li><a href="./">Home</a></li>
	<li class="dir">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About Us
		<ul>
			<li><a href="./">History</a></li>
			<li><a href="./">Our Vision</a></li>
			<li class="dir">The Team
				<ul>
					<li><a href="./">Brigita</a></li>
					<li><a href="./">John</a></li>
					<li><a href="./">Michael</a></li>
					<li><a href="./">Peter</a></li>
					<li><a href="./">Sarah</a></li>
				</ul>
			</li>
			<li><a href="./">Clients</a></li>
			<li><a href="./">Testimonials</a></li>
			<li><a href="./">Press</a></li>
			<li><a href="./">FAQs</a></li>
		</ul>
	</li>
	<li class="dir">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Services
		<ul>
			<li><a href="./">Product Development</a></li>
			<li><a href="./">Delivery</a></li>
			<li><a href="./">Shop Online</a></li>
			<li><a href="./">Support</a></li>
			<li><a href="./">Training &amp; Consulting</a></li>
		</ul>
	</li>
	<li class="dir">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Products
		<ul>
			<li><a href="./" class="dir">New</a>
				<ul>
					<li><a href="./">Corporate Use</a></li>
					<li><a href="./">Private Use</a></li>
				</ul>
			</li>
			<li><a href="./" class="dir">Used</a>
				<ul>
					<li><a href="./">Corporate Use</a></li>
					<li><a href="./">Private Use</a></li>
				</ul>
			</li>
			<li><a href="./">Featured</a></li>
			<li><a href="./">Top Rated</a></li>
			<li><a href="./">Prices</a></li>
		</ul>
	</li>
	<li><a href="./">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gallery</a></li>
	<li><a href="./">&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Events</a></li>
	<li><a href="./">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Careers</a></li>
	<li><a href="./" class="dir">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact Us</a>
		<ul>
			<li><a href="./">Enquiry Form</a></li>
			<li><a href="./">Map &amp; Driving Directions</a></li>
			<li><a href="./">Your Feedback</a></li>
		</ul>
	</li>
</ul>
    </div>
<!-- header -->
<div id="mainbodyUp">
<div id="mainBody">
<div id="innerMain" style="padding-bottom: 10px;">
	<div id="sBc"><span class="breadCrumb"> <span class="brdcrmTxtAct">Salling Report</span></span></div>
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
		<form name="loginForm" action="Analysis_SalesManager_Report.jsp" method="post">
		<div id="loginBotm" style="height: 364px;">
		<div class="myProRqFld" style="padding-right: 11px;"><span style="color: red;">* </span>Mandatory fields</div>
			<div class="loginInner" style="padding-top:20px;">
			<div class="logErrMsg">&nbsp;</div>
                                 <div class="signBox">
                                <div><div style="text-align: center; color: red;"></div></div>
			<h2 class="tabbgB">Sales Report</h2>
                        <div class="signRow">
				<div class="signLbl">Salesman</div>
				<div class="signFldC">
				<select name="state" id="state" maxlength="80" tabindex="9" style="padding: 1px 0pt; width: 175px;" onclick="show()">
 <option selected="selected" value="0">SALESMAN NAME</option>
   <%  try{
       Connection con=null;
       Connect co=new Connect();
       con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from sales");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
     String moid= rs1.getString(1);
     String mname= rs1.getString(6);
     %>
  <option value="<%=moid%>"><%=mname%></option>
              <%  }}
           catch(Exception e)
                   {
               out.println("Invoice page error occured"+e);
               }
            %>
</select>
                                </div><div class="ldReqStar">*</div>
			</div>

			<div class="signRow">
				<div class="signLbl"> From</div>
				<div class="signFldC">
                                    <div>	<input name="fdate" readonly id="fdate" Onfocus="displayCalendar(this,'yyyy-mm-dd',this)" maxlength="50" tabindex="1" style="padding: 1px 0pt; width: 175px;" type="text">
                                </div></div><div class="ldReqStar">*</div>
			</div>
                        <div class="signRow">
				<div class="signLbl">Upto</div>
				<div class="signFldC">
                                    <div>	<input name="sdate" id="sdate" readonly Onfocus="displayCalendar(this,'yyyy-mm-dd',this)" maxlength="50" tabindex="2" style="padding: 1px 0pt; width: 175px;" type="text">
                                </div></div><div class="ldReqStar">*</div>
			</div>
			<div class="loginBtnbox">
				<div class="loginBtn">
					<input value="»Submit" alt="Login to My Car Section" title="Login to My Car Section" class="submitBtn" onmouseover="this.className='submitBtnA'" onmouseout="this.className='submitBtn'" onclick="return fun();" tabindex="3" style="width: 175px;" type="button">
				</div>
			</div>


                               </div>
			</div>
		</div>
		</form>
	</div>
</div>
</div>
</div>
<!-- footer -->
<div id="footer">

<!-- footer -->
</div>
</div>
    </div></div>
</body></html>








