<%--
    Document   : salex
    Created on : Mar 14, 2011, 11:10:51 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="myconnection.Connect,java.sql.*,crm.State,java.util.*,crm.CustomerUpdate"%>
<jsp:useBean id="dd" class="crm.State"/>
<jsp:setProperty name="dd" property="*"/>
<jsp:useBean id="d" class="crm.CustomerUpdate"/>
<jsp:setProperty name="d" property="*"/>

<html>
    <head>
        <!-- base  -->
        <title>Sales Manager information</title>
        <link rel="stylesheet" href="calendar/dhtmlgoodies_calendar.css?random=20051112" media="screen"/>
        <script type="text/javascript" src="calendar/dhtmlgoodies_calendar.js?random=20060118"></script>
        <link title="stylesheet" type="text/css" rel="stylesheet" href="signup_files/common.css">
        <link title="stylesheet" type="text/css" rel="stylesheet" href="signup_files/mycar.css">
        <link rel="stylesheet" type="text/css" href="signup_files/theme_maruti2.css">
        <link rel="shortcut icon" type="image/x-icon" href="css/dropdown/themes/vimeo.com/images/favicon.ico" />
        <link href="css/dropdown/themes/vimeo.com/helper.css" media="screen" rel="stylesheet" type="text/css" />
        <link href="css/dropdown/dropdown.css" media="screen" rel="stylesheet" type="text/css" />
        <link href="css/dropdown/themes/vimeo.com/default.advanced.css" media="screen" rel="stylesheet" type="text/css" />
        <!--[if !IE]>
        <link title="stylesheet" type="text/css" rel="stylesheet" href="http://www.sagarauto.com/styles/buttonMoz.css" />
        <![endif]-->
        <script language="javascript" type="text/javascript" src="signup_files/common.js"></script>
        <script language="javascript" type="text/javascript" src="signup_files/v.js"></script>
        <script language="javascript" type="application/javascript" src="js/salex.js"></script>
    </head>
    <body onLoad="javascript:document.getElementById('txtemail').focus();">
        <form name="frm" action="CustomerUpdate1.jsp" method="post">
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
      String kz=null;
try{
          ArrayList ar=dd.selectState(nam);
          Iterator i=ar.iterator();

                   while(i.hasNext())
                       {
                      String o=(String)i.next();
                        kz=(String)i.next();

               } }
           catch(Exception e)
                   {
               out.println("login country page have error"+e);
               }
            %>

Welcome <%=kz%> &nbsp;|&nbsp;
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
                                <div id="sBc"><span class="breadCrumb"><a href=""></a>Registration</span></div>
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
                                    <div id="signBotm" style="padding-top: 0pt;">
                                        <div class="myProRqFld" style="padding-right: 11px;"><span style="color: red; font-weight: bold;">&nbsp;</span><span style="color: red;">* </span>Mandatory fields</div>
                <div class="signBox">
                    <%
           String name=request.getParameter("na");
           ArrayList ar1=d.select1(name);
           Iterator i1=ar1.iterator();
            if(i1.hasNext())
                {
          %>
			<div><div style="text-align: center; color: red;"></div></div>
			
			<div align="center">     <img  align="middle" src="images/pic2.jpg">
                            </div>
                        </div>

			<div class="signBox bgNone">
			<h2 class="tabbgB">Customer Information</h2>
			<div class="signRow">
				<div class="signLbl">CustID</div>
				<div class="signFldC">
					<input name="userid" id="userid" maxlength="50" tabindex="1" style="padding: 1px 0pt; width: 175px;" type="text" value="<%=i1.next()%>">
				</div><div class="ldReqStar">*</div>
			</div>
			<div class="signRow">
				<div class="signLbl">Title</div>
				<div class="signFldA">
					<select name="title" id="select" tabindex="4">
							<option selected="selected" value="Mr.">Mr.</option>
							<option value="Ms.">Ms.</option>
							<option value="Ms.">Mrs.</option>
				  </select>
				</div>
			</div>
			<div class="signRow">
				<div class="signLbl">Cust Name</div>
				<div class="signFldC">
					<input name="name" id="name" maxlength="40" onKeyPress="return validateAlphabet(this)" tabindex="6" style="padding: 1px 0pt; width: 175px;" type="text" value="<%=i1.next()%>">
				</div><div class="ldReqStar">*</div>
			</div><% String n1=(String)i1.next();%>
			<div class="signRow">
				<div class="signLbl">Address</div>
				<div class="signFldC">
					<input name="add" id="add" maxlength="80" tabindex="7" style="padding: 1px 0pt; width: 175px;" type="text" value="<%=i1.next()%>">
				</div><div class="ldReqStar">*</div>
			</div>
                        <div class="signRow">
				<div class="signLbl">City</div>
				<div class="signFldC">
					<input name="city"  id="city" maxlength="30" onKeyPress="return validateAlphabet(this)" tabindex="9" style="padding: 1px 0pt; width: 175px;" type="text" value="<%=i1.next()%>">
				</div><div class="ldReqStar">*</div>
			</div>
			<div class="signRow">
				<div class="signLbl">State</div>
				<div class="signFldC">
					<select name="state" id="state" maxlength="80" tabindex="8" style="padding: 1px 0pt; width: 175px;">
                     <option selected="selected" value="0">SELECT ANY STATE</option>
                   <% String n12=(String)i1.next();%>                         <%
try{
          ArrayList ar=dd.select();
          Iterator i=ar.iterator();

                   while(i.hasNext())
                       {
                       String o=(String)i.next();
                       String k=(String)i.next();

       %>
           <option value="<%=o%>"><%=k%></option>
              <% } }
           catch(Exception e)
                   {
               out.println("login country page have error"+e);
               }
            %>

			</select>
				</div><div class="ldReqStar">*</div>
			</div>

			<div class="signRow">
				<div class="signLbl">Pin Code</div>
				<div class="signFldC">
					<input name="pin" id="pin" maxlength="6" onKeyUp="validateNumeric(this)" tabindex="10" style="padding: 1px 0pt; width: 175px;" type="text" value="<%=i1.next()%>">
				</div>
			</div>
			</div>
			<div class="signBox bgNone">
				<div style="background: transparent url(../images/mycar/divider_signup_02.jpg) no-repeat scroll left bottom; height: 122px; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous;">
			<div class="signRowA">&nbsp;</div>
			<div class="signRowA">
				<div class="signLblB">&nbsp;</div>
				<div class="signFld">
					<div style="float: left; width: 56px;">Code</div>
					<div style="float: left; width: 110px; padding-left: 15px;">Phone No.</div>
				</div>
			</div>
			<div class="signRow">
				<div class="signLbl">Phone</div>
				<div style="float: left; width: 56px;">
				  <input name="phone" id="phone" maxlength="5" onKeyUp="validateNumeric(this)" tabindex="11" style="padding: 1px 0pt; width: 50px;" type="text" value="<%=i1.next()%>"></div>
				<div style="float: left; width: 118px; padding-left: 5px;">
				  <input name="phone1" id="phone1" maxlength="10" onKeyUp="validateNumeric(this)" tabindex="12" style="padding: 1px 0pt; width: 110px;" type="text" value="<%=i1.next()%>">
				</div>
			</div>

			<div class="signRow">
				<div class="signLbl">Mobile</div>
				<div style="float: left; line-height: 18px; padding-left: 18px; width: 39px;">(0)</div>
				<div style="float: left; width: 118px; padding-left: 5px;">
				  <input name="mobile" id="mobile" maxlength="10" onKeyUp="validateNumeric(this)" tabindex="13" style="padding: 1px 0pt; width: 110px;" type="text" value="<%=i1.next()%>">
				</div><div class="ldReqStar">*</div>
			</div>
			<div class="signRow">
				<div class="signLbl">E-mail ID</div>
				<div class="signFldC">
					<input name="email" id="email" maxlength="50" tabindex="14" style="padding: 1px 0pt; width: 175px;" type="text" value="<%=i1.next()%>">
				</div><div class="ldReqStar">*</div>
			</div>
			<div class="signRow">
				<div class="signLbl">DOB</div>
				<div class="signFldC">
					<div><input name="dob" id="dob" Onfocus="displayCalendar(this,'yyyy-mm-dd',this)" maxlength="50" tabindex="15" style="padding: 1px 0pt; width: 175px;" type="text" value="<%=i1.next()%>"></div>
				</div><div class="ldReqStar">*</div>
			</div>
			<div class="signRow">
				<div class="signLbl">Income Group</div>
				<div class="signFldC">
				<div>	<input name="ig" id="ig" maxlength="6" onKeyUp="validateNumeric(this)" tabindex="16" style="padding: 1px 0pt; width: 175px;" type="text" value="<%=i1.next()%>">
                                </div></div><div class="ldReqStar">*</div>
			</div>
			<div class="signRow">
				<div class="signLbl">Occuption</div>
				<div class="signFldC">
					<input name="occu" id="occu" onKeyPress="return validateAlphabet(this)" maxlength="50" tabindex="17" style="padding: 1px 0pt; width: 175px;" type="text" value="<%=i1.next()%>">
				</div><div class="ldReqStar">*</div><%}%>
			</div>

			<div style="width: 265px;">

				<div style="float: left;"><!-- <input type="reset" value="" alt="Reset" title="Reset" class="resetButn" onmouseover="this.className='resetButnA'" onmouseout="this.className='resetButn'" onclick="document.getElementById('txtemail').focus();" tabindex="20" /> --></div>
                                <div style="float: right;"><input value="<< Update!" onclick="customer();"class="submitBtn" onMouseOver="this.className='submitBtnA'" onMouseOut="this.className='submitBtn'" tabindex="18" style="width: 130px;" type="button"></div>
				</div>
				</div>
		</div>
	</div>
</div>
</div>
</div>
<!-- footer -->
<div id="footer">
</div>
</div></div></div>
<!-- footer -->
</div>
</form>
</body></html>

