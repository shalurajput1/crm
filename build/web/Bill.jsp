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
<jsp:useBean id="cus" class="crm.Customer_Foregin"/>
<jsp:setProperty name="cus" property="*"/>
<jsp:useBean id="s" class="crm.State"/>
<jsp:setProperty name="s" property="*"/>
<html>
<head>
<!-- base href="http://www.sagarauto.com/" -->
<title>Bill Details</title>
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
<script language="javascript">
    function show()
    {
xmlHttp=GetxmlHttpObject();
var value=document.getElementById("bill").value;
if(xmlHttp==null)
    {
        alert("your browser ");
    }
    else
        {
            xmlHttp.onreadystatechange=statechanged;
            xmlHttp.open("post","SalexAjax.jsp?id12="+value);
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
<script language="javascript">
function bill12()
{
    if(document.getElementById('bill').value ==""){
		alert("Please enter bill no.");
		document.getElementById('bill').focus();
		return false;
        }

         else if(document.getElementById('cust').value == 0){
		alert("Please enter customer name");
		document.getElementById('cust').focus();
		return false;
                }

        else if(document.getElementById('model').value ==0){
		alert("Please Select model");
		document.getElementById('model').focus();
		return false;
                }
           else if(document.getElementById('vname').value == 0){
		alert("Please enter  varient");
		document.getElementById('vname').focus();
		return false;
                }
            else if(document.getElementById('color').value ==0){
		alert("Please enter  color name");
		document.getElementById('color').focus();
		return false;
                }

else if(document.getElementById('terr').value == ""){
		alert("Please enter  location");
		document.getElementById('terr').focus();
		return false;
                }
                else if(document.getElementById('in').value==""){
		alert("Please enter invoice number");
		document.getElementById('in').focus();
		return false;
	}
	else if(document.getElementById('indate').value=="")
	{
	alert("Please enter bill date");
	document.getElementById('indate').focus();
		return false;
	}
else if(document.getElementById('amount').value == ""){
		alert("Please enter price");
		document.getElementById('amount').focus();
		return false;
                }
      else if(document.getElementById('sn').value==0)
	{
	alert("Please enter  sales manger name");
	document.getElementById('sn').focus();
		return false;
	}
        else
            {
                document.frmsignup.submit();
            }
}
 </script>
</head>
<body>
<form name="frmsignup" action="Bill1.jsp" method="post">
<div id="outerbody">
<div id="innerbody">
<!-- header -->
<div id="header">
<div id="headUpper">
<div id="topLogin">
    <%
     request.getSession(true);
     String s12=(String)session.getAttribute("name");
      String nam=s.sessionState(s12);
      String k=null;
      String n=request.getParameter("na");
try{
          ArrayList ar=s.selectState(nam);
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
      Connection con=null;
            %>

Welcome <%=k%> &nbsp;|&nbsp;
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
	<div id="sBc"><span class="breadCrumb">Bill Detail</span></div>
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
            <center>       <div ><font size="5"><i><%=k%> MARUTI SUZUKI AUTOMOBILES</i></font></div></center>
		<div id="signBotm" style="padding-top: 0pt;">
                    
		<div class="myProRqFld" style="padding-right: 11px;"><span style="color: red; font-weight: bold;">&nbsp;</span><span style="color: red;">* </span>Mandatory fields</div>
                
                <div class="signBox">
			<img src="signup_files/service.jpg">
			</div>
			<div class="signBox bgNone">
			<h2 class="tabbgB">Bill  Entry</h2>

			<div class="signRow">
				<div class="signLbl">Bill No.</div>
				<div class="signFldC">
					<input name="bill" id="bill" maxlength="40"  tabindex="1" style="padding: 1px 0pt; width: 175px;" type="text">
				</div><div class="ldReqStar"><div id="id2"></div>*</div>
			</div>

			<div class="signRow">
				<div class="signLbl">Name</div>
				<div class="signFldC">
					<select name="cust" id="cust" maxlength="80" tabindex="2" style="padding: 1px 0pt; width: 175px;" onclick="show()">
 <option selected="selected" value="0">CUSTOMER NAME</option>
                                        <%
try{
          ArrayList c=cus.selectCustomer();
          Iterator us=c.iterator();

                   while(us.hasNext())
                       {
                       String cid=(String)us.next();
                       String cn=(String)us.next();

       %>
           <option value="<%=cid%>"><%=cn%></option>
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
				<div class="signLbl">Model</div>
				<div class="signFldC">
                                    <select name="model" id="model"  tabindex="3" style="padding: 1px 0pt; width: 175px;">
 <option selected="selected" value="0">SELECT CAR MODEL</option>
                                        <%
                                        String v=null;
                                        String c=null;
try{
    Connect co=new Connect();
    con=co.setCon();
    PreparedStatement ps=con.prepareStatement("Select * from quotastate where invoice='"+n+"'");
    ResultSet rs=ps.executeQuery();
                   while(rs.next())
                       {
                       String m=rs.getString(4);
                        v=rs.getString(5);
                        c=rs.getString(6);
        PreparedStatement ps1=con.prepareStatement("Select * from porduct_id where mid='"+m+"'");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
     String moid= rs1.getString(1);
     String mname= rs1.getString(2);
     %>
  <option value="<%=moid%>"><%=mname%></option>
              <% } }}
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
                                    <select name="vname" id="vname"  tabindex="4" style="padding: 1px 0pt; width: 175px;">
 <option selected="selected" value="0">SELECT VARIENT</option>
 <%
 try{
PreparedStatement ps1=con.prepareStatement("Select * from varient where vid='"+v+"'");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
     String moid= rs1.getString(1);
     String mname= rs1.getString(3);
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
				<div class="signLbl"> Color</div>
				<div class="signFldC">
                                    <select name="color" id="color" tabindex="5" style="padding: 1px 0pt; width: 175px;">
 <option selected="selected" value="0">SELECT COLOR</option>
 <%
 try{
PreparedStatement ps1=con.prepareStatement("Select * from colors where cid='"+c+"'");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
     String moid= rs1.getString(1);
     String mname= rs1.getString(2);
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
						</div>
			<div class="signBox bgNone">
				<div style="background: transparent url(../images/mycar/divider_signup_02.jpg) no-repeat scroll left bottom; height: 122px; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous;">
			<div class="signRowA">&nbsp;</div>
                        <div class="signRow">
				<div class="signLbl"></div>
				<div class="signFldC">
				</div>
			</div>
                        <div class="signRow">
				<div class="signLbl">Territory</div>
				<div class="signFldC">
                                    <input name="terr" id="terr" value="<%=k%>"readonly onKeyUp="validateNumeric(this)" tabindex="6" style="padding: 1px 0pt; width: 175px;" type="text">
				</div><div class="ldReqStar">*</div>
			</div>
                          <div class="signRow">
				<div class="signLbl">Invoice No.</div>
				<div class="signFldC">
					<input name="in" id="in" maxlength="6" tabindex="6" style="padding: 1px 0pt; width: 175px;" type="text" value="<%=n%>">
                                </div>
			</div>
			<div class="signRow">
				<div class="signLbl">Bill Date</div>
				<div class="signFldC">
                                    <div>	<input name="indate" readonly id="indate" Onfocus="displayCalendar(this,'yyyy-mm-dd',this)" maxlength="50" tabindex="7" style="padding: 1px 0pt; width: 175px;" type="text">
                                </div></div><div class="ldReqStar">*</div>
			</div>
                       <div class="signRow">
				<div class="signLbl">Amount</div>
				<div class="signFldC">
					<input name="amount" id="amount" maxlength="8" onKeyUp="validateNumeric(this)" tabindex="10" style="padding: 1px 0pt; width: 175px;" type="text">
				</div><div class="ldReqStar">*</div>
			</div>

                        <div class="signRow">
				<div class="signLbl">Salesman</div>
				<div class="signFldC">
				<select name="sn" id="sn" maxlength="80" tabindex="9" style="padding: 1px 0pt; width: 175px;" onclick="show()">
 <option selected="selected" value="0">SALESMAN NAME</option>
   <%  try{
PreparedStatement ps1=con.prepareStatement("Select * from sales where userid='"+s12+"'");
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

			<div style="width: 265px;">

				<div style="float: left;"><!-- <input type="reset" value="" alt="Reset" title="Reset" class="resetButn" onmouseover="this.className='resetButnA'" onmouseout="this.className='resetButn'" onclick="document.getElementById('txtemail').focus();" tabindex="20" /> --></div>
				<div style="float: right;"><input value="<< Submit!" class="submitBtn" onMouseOver="this.className='submitBtnA'" onMouseOut="this.className='submitBtn'" onClick="return bill12();" tabindex="10" style="width: 130px;" type="button"></div>
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
