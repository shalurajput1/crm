<%--
    Document   : salex
    Created on : Mar 14, 2011, 11:10:51 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="myconnection.Connect,java.sql.*,crm.Model,java.util.*"%>
<jsp:useBean id="dd" class="crm.Model"/>
<jsp:setProperty name="dd" property="*"/>
<jsp:useBean id="ddd" class="crm.State"/>
<jsp:setProperty name="ddd" property="*"/>
<html>
<head>
<!-- base href="http://www.sagarauto.com/" -->
<title>Invoice</title>
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
<script language="javascript" type="text/javascript">
 
function getCheckBoxVal(id){

	if(document.getElementById(id).checked){
		document.getElementById('chkspoffer').value = "YES";
	}else{
		document.getElementById('chkspoffer').value = "NO";
	}
	return true;
}
if (document.images)
{
pic1= new Image(87,29);
pic1.src="http://www.sagarauto.com/images/buttons/submit_mo.jpg";
pic2= new Image(80,29);
pic2.src="http://www.sagarauto.com/images/buttons/reset_mo.jpg";
}
</script>
<script language="javascript">
    function show()
    {
xmlHttp=GetxmlHttpObject();
var value=document.getElementById("model").value;
if(xmlHttp==null)
    {
        alert("your browser ");
    }
    else
        {
            xmlHttp.onreadystatechange=statechanged;
            xmlHttp.open("post","Submodel2.jsp?id="+value);
            xmlHttp.send(null);
        }
    function statechanged()
    {
        if(xmlHttp.readyState==4 || xmlHttp.readyState==complete)
            {
      document.getElementById('id2').innerHTML=xmlHttp.responseText;
            }
    }
    }
    function GetxmlHttpObject()
    {
        var xmlHttp=null;
        try
        {
            xmlHttp=new XMLHttpRequest();
        }
       catch(e)
       {}

return xmlHttp;
}
</script>
</head>
<body>
<form name="frmsignup" action="Invoice1.jsp" method="post">

<div id="outerbody">
<div id="innerbody">
<!-- header -->
<div id="header">
<div id="headUpper">
<div id="topLogin">
<%
     request.getSession(true);
     String s12=(String)session.getAttribute("name");%>
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
	<div id="sBc"><span class="breadCrumb">Model Detail</span></div>
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
			<img src="signup_files/service.jpg">
			</div>
			<div class="signBox bgNone">
			<h2 class="tabbgB">Model Details Entry</h2>
			
			<div class="signRow">
				<div class="signLbl">Invoice No.</div>
				<div class="signFldC">
					<input name="in" id="in" maxlength="40"  tabindex="5" style="padding: 1px 0pt; width: 175px;" type="text">
				</div><div class="ldReqStar">*</div>
			</div>
			<div class="signRow">
				<div class="signLbl">Chachis No.</div>
				<div class="signFldC">
					<input name="ch" id="ch" maxlength="40"  tabindex="6" style="padding: 1px 0pt; width: 175px;" type="text">
				</div><div class="ldReqStar">*</div>
			</div>
			<div class="signRow">
				<div class="signLbl">Engine No.</div>
				<div class="signFldC">
					<input name="eng" id="eng" maxlength="80" tabindex="7" style="padding: 1px 0pt; width: 175px;" type="text">
				</div><div class="ldReqStar">*</div>
			</div>
                        <div class="signRow">
				<div class="signLbl">InvoiceDate</div>
				<div class="signFldC">
				<div>	<input name="indate" id="indate" Onfocus="displayCalendar(this,'yyyy-mm-dd',this)" maxlength="50" tabindex="16" style="padding: 1px 0pt; width: 175px;" type="text">
                                </div></div><div class="ldReqStar">*</div>
			</div>
                         
			
				</div>
			<div class="signBox bgNone">
				<div style="background: transparent url(../images/mycar/divider_signup_02.jpg) no-repeat scroll left bottom; height: 122px; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous;">
			<div class="signRowA">&nbsp;</div>
                        
			 <div class="signRow">
				<div class="signLbl"></div>
				<div class="signFldC">

				</div></div>
                            
                          <div class="signRow">
				<div class="signLbl">Model</div>
				<div class="signFldC">
                                    <select name="model" id="model" maxlength="80" tabindex="8" style="padding: 1px 0pt; width: 175px;" onclick="show()">
 <option selected="selected" value="0">SELECT CAR MODEL</option>
                                        <%
try{
          ArrayList ar=dd.select();
          Iterator i=ar.iterator();

                   while(i.hasNext())
                       {
                       String k=(String)i.next();
                       String m=(String)i.next();

       %>
           <option value="<%=k%>"><%=m%></option>
              <% } }
           catch(Exception e)
                   {
               out.println("Invoice page error occured"+e);
               }
            %>
</select>
				</div><div class="ldReqStar">*</div>
			</div>
            <div class="signRow">
				<div class="signLbl"> SubModel</div>
				<div class="signFldC">

				</div><div id="id2"></div>
			</div>
            <div class="signRow">
				<div class="signLbl">Color</div>
				<div class="signFldC">
					<select name="color" id="color" maxlength="80" tabindex="8" style="padding: 1px 0pt; width: 175px;">
                                       <option selected="selected" value="0">SELECT CAR COLOR</option>
                                            <%
try{
          ArrayList ar=dd.select2();
          Iterator i=ar.iterator();

                   while(i.hasNext())
                       {

                       String ci=(String)i.next();
                       String cn=(String)i.next();

       %>
           <option value="<%=ci%>"><%=cn%></option>
              <% } }
           catch(Exception e)
                   {
               out.println("Invoice page error occured"+e);
               }
            %>
</select>

				</div><div class="ldReqStar">*</div>
			</div>
					
                       <div class="signRow">
				<div class="signLbl">Cost</div>
				<div class="signFldC">
					<input name="amount" id="amount" maxlength="8" onKeyUp="validateNumeric(this)" tabindex="10" style="padding: 1px 0pt; width: 175px;" type="text">
				</div><div class="ldReqStar">*</div>
			</div>
			<div class="signRow">
				<div class="signLbl">Margin</div>
				<div class="signFldC">
					<input name="margin" id="margin" onKeyPress="return validateNumeric(this)" maxlength="50" tabindex="17" style="padding: 1px 0pt; width: 175px;" type="text">
				</div><div class="ldReqStar">*</div>
			</div>
                        

			<div style="width: 265px;">

				<div style="float: left;"><!-- <input type="reset" value="" alt="Reset" title="Reset" class="resetButn" onmouseover="this.className='resetButnA'" onmouseout="this.className='resetButn'" onclick="document.getElementById('txtemail').focus();" tabindex="20" /> --></div>
				<div style="float: right;"><input value="<< Submit!" class="submitBtn" onMouseOver="this.className='submitBtnA'" onMouseOut="this.className='submitBtn'" onClick="return chksignupform();" tabindex="18" style="width: 130px;" type="submit"></div>
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
