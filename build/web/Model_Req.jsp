
<%--
    Document   : SubModel
    Created on : Mar 16, 2011, 3:17:19 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="myconnection.Connect,java.sql.*,crm.State,java.util.*" %>
<jsp:useBean id="dd1" class="crm.State"/>
<jsp:setProperty name="dd1" property="*"/>
<jsp:useBean id="dd" class="crm.Model"/>
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
<!--[if !IE]>
<![endif]-->
<script language="javascript" type="text/javascript" src="signup_files/common.js"></script>
<script language="javascript" type="text/javascript" src="signup_files/validate.js"></script>

<script language="javascript">
    function show()
    {
xmlHttp=GetxmlHttpObject();
var value=document.getElementById("mname").value;
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
      String nam=dd1.sessionState(s12);
      String kw=null;
      String o=null;
try{
          ArrayList ar1=dd1.selectState(nam);
          Iterator i1=ar1.iterator();

                   while(i1.hasNext())
                       {
                      o=(String)i1.next();
                        kw=(String)i1.next();

               } }
           catch(Exception e)
                   {
               out.println("login country page have error"+e);
               }
            %>


Welcome <%=kw%> &nbsp;|&nbsp;
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
	<div id="sBc"><span class="breadCrumb"> <span class="brdcrmTxtAct">Manage Demand</span></span></div>
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
						<div class="mycarTopImg" style="float: left; height: 40px; width: 333px; margin-top: 5px;"><img src="signup_files/mycar_image.jpg" alt="Now All your Car Worries are Gone!"></div>
		</div>
            <div class="myProRqFld" style="padding-right: 11px;"><span style="color: red; font-weight: bold;">&nbsp;</span><span style="color: red;">* </span>Mandatory fields</div>
		<form name="loginForm" action="model_req1.jsp" method="post">
		<div id="loginBotm" style="height: 364px;">
		
			<div class="loginInner" style="padding-top: 0px;">
                            
			<div class="logErrMsg">&nbsp;</div>
                                 <div class="signBox">
                                <div><div style="text-align: center; color: red;"></div></div>
			<h2 class="tabbgB">Model Demand</h2>
				<div class="signRow">
				<div class="signLbl">ShowRoom</div>
				<div class="signFldC">
					<select name="terr" id="terr" maxlength="80" tabindex="8" style="padding: 1px 0pt; width: 175px;">
                    <option selected="selected" value="0">SHOWROOM TERRITORY</option>
           <option value="<%=o%>"><%=kw%></option>
             

			</select>
				</div><div class="ldReqStar">*</div>
			</div>
                         <div class="signRow">
				<div class="signLbl">Model Name</div>
				<div class="signFldC">
                                    <select name="mname" id="mname"  style="padding: 1px 0pt; width: 175px;" onclick="show()">
            <option selected="selected" value="0">SELECT CAR MODEL</option>
            <%
          ArrayList ar=dd.select();
          Iterator i=ar.iterator();
          while(i.hasNext())
               {
           String k=(String)i.next();
           String m=(String)i.next();
                                            %>
           <option value="<%=k%>"><%=m%></option>
              <% } %>
</select>
		</div><div class="ldReqStar">*</div>
			</div>
                            <div class="signRow">
				<div class="signLbl">Varient</div>
				<div class="signFldC">
                                   <div id="id2"></div>
				</div>
			</div>
                         <div class="signRow">
				<div class="signLbl">Color Name</div>
				<div class="signFldC">
					<select name="cname" id="cname"  style="padding: 1px 0pt; width: 175px;">
                                            <option selected="selected" value="0">SELECT ANY COLOR</option>
                                            <option value="x00001">Red</option>
                                            <option value="x00005">Yellow</option>
                                            <option value="x00004">blue</option>
                                            <option value="x00002">Black</option>
                                            <option value="x00007">GRAY</option>
                                            <option value="x00003">White</option>
                                            <option value="x00006">Brown</option>
                                        </select>
				</div><div class="ldReqStar">*</div>
			</div>
                         <div class="signRow">
				<div class="signLbl">Requirment</div>
				<div class="signFldC">
				<input name="quota" id="quota" maxlength="50" tabindex="1" style="padding: 1px 0pt; width: 175px;" type="text">
				</div><div class="ldReqStar">*</div>
			</div>
			<div class="loginBtnbox">
				<div class="loginBtn">
                                    <input value="» Demand" alt="Demand" title="Demand" class="submitBtn" onmouseover="this.className='submitBtnA'" onmouseout="this.className='submitBtn'" onclick="return validateLogin();"  tabindex="3" style="width: 180px;" type="submit">

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




