<%--
    Document   : QuotaAssign
    Created on : Apr 12, 2011, 12:27:03 AM
    Author     : Rohit Pachouli
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="myconnection.Connect,java.sql.*,crm.State,java.util.*" %>
<jsp:useBean id="dd" class="crm.State"/>
<jsp:setProperty name="dd" property="*"/>

<html><head><!-- base " -->
<title>Quota Assign</title>
<link rel="SHORTCUT ICON" href="http://www.sagarauto.com/images/others/favicon.ico">
<link title="stylesheet" type="text/css" rel="stylesheet" href="signup_files/common.css">
<link title="stylesheet" type="text/css" rel="stylesheet" href="signup_files/mycar.css">
<link rel="stylesheet" type="text/css" href="signup_files/theme_maruti2.css">
<link rel="shortcut icon" type="image/x-icon" href="css/dropdown/themes/vimeo.com/images/favicon.ico" />
<link href="css/dropdown/themes/vimeo.com/helper.css" media="screen" rel="stylesheet" type="text/css" />
<!-- Beginning of compulsory code below -->
<link href="css/dropdown/dropdown.css" media="screen" rel="stylesheet" type="text/css" />
<link href="css/dropdown/themes/vimeo.com/default.advanced.css" media="screen" rel="stylesheet" type="text/css" />

 <link rel="stylesheet" href="calendar/dhtmlgoodies_calendar.css?random=20051112" media="screen"/>
<script type="text/javascript" src="calendar/dhtmlgoodies_calendar.js?random=20060118"></script>
<!--[if !IE]>
<![endif]-->
<script language="javascript" type="text/javascript" src="signup_files/common.js"></script>
<script language="javascript" type="text/javascript" src="signup_files/validate.js"></script>
<script language="javascript" type="text/javascript">
if (document.images)
{
pic1= new Image(80,29);
pic1.src="";
}
</script>

</head><body>
<div id="outerbody">
<div id="innerbody">
<!-- header -->
<div id="header">
<div id="headUpper">
<div id="topLogin">
Welcome Guest &nbsp;|&nbsp;
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
	<div id="sBc"><span class="breadCrumb"> <span class="brdcrmTxtAct">Quota Transfer</span></span></div>
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
						<div class="mycarTopImg" style="float: left; height: 80px; width: 333px; margin-top: 5px;"><img src="signup_files/mycar_image.jpg" alt="Now All your Car Worries are Gone!"></div>
		</div>
		<form name="loginForm" action="QuotaTransfer1.jsp" method="post">
		<div id="loginBotm" style="height: 364px;">
		<div class="myProRqFld" style="padding-right: 57px;"><span style="color: red;">* </span>Mandatory fields</div>
			<div class="loginInner" style="padding-top: 45px;">
			<div class="logErrMsg">&nbsp;</div>
                        <%
                        String op=request.getParameter("na");

                        %>
                                 <div class="signBox">
                                <div><div style="text-align: center; color: red;"></div></div>
			<h2 class="tabbgB">Quota Assign</h2>
                         <div class="signRow">
				<div class="signLbl">Invoice No.</div>
				<div class="signFldC">
					<input name="in" value="<%=op%>" id="in" maxlength="80" tabindex="7" style="padding: 1px 0pt; width: 175px;" type="text">
				</div><div class="ldReqStar">*</div>
			</div>
				<div class="signRow">
				<div class="signLbl">Territoty</div>
				<div class="signFldC">
					<select name="terr" id="terr" maxlength="80" tabindex="8" style="padding: 1px 0pt; width: 175px;" onclick="show()">
                    <option selected="selected" value="0">SELECT TERRITORY</option>

                              <%
          ArrayList art=dd.select();
          Iterator iq=art.iterator();
          while(iq.hasNext())
               {
           String k=(String)iq.next();
           String m=(String)iq.next();
                         %>
           <option value="<%=m%>"><%=m%></option>
              <% } %>

			</select>
				</div><div class="ldReqStar">*</div>
			</div>
                         <div class="signRow">
				<div class="signLbl">AssignDate</div>
				<div class="signFldC">
				<div>	<input name="indate" id="indate" Onfocus="displayCalendar(this,'yyyy-mm-dd',this)" maxlength="50" tabindex="16" style="padding: 1px 0pt; width: 175px;" type="text">
                                </div></div><div class="ldReqStar">*</div>
			</div>




			<div class="loginBtnbox">
				<div class="loginBtn">
                                    <input value="»Transfer" alt="Manage  Varient Model" title="Manage Sub Model" class="submitBtn" onmouseover="this.className='submitBtnA'" onmouseout="this.className='submitBtn'" onclick="return validateLogin();"  tabindex="3" style="width: 180px;" type="submit">

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
    </div>
</body></html>





