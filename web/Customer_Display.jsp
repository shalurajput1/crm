 <%--
    Document   : Salesman_Display
    Created on : Mar 16, 2011, 11:11:01 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*,java.sql.*,myconnection.Connect" %>
<jsp:useBean id="dd" class="crm.Customer"/>
<jsp:setProperty name="dd" property="*"/>
<html><head>
<!-- base " -->
<title>Customer display</title>
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
	<div id="sBc"><span class="breadCrumb"> <span class="brdcrmTxtAct">Customer Information</span></span></div>
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
                <%
        ArrayList ar=dd.select();
        Iterator i=ar.iterator();
        %><form action="Customer_Delete.jsp">
                <div align="center">
<table align="center" ><tr><th><h1 class="tabbgD">&nbsp;&nbsp;&nbsp;Customer Information Report &nbsp;&nbsp;&nbsp;&nbsp;   </h1> </th></tr> </table>
            <table align="center" border="1" bgcolor="#CAF7C8">
  <tr>
      <th width="20"  height="30"><h1 class="mycarTophd">Delete</h1></th>
    <th width="40" height="30"><h1 class="mycarTophd">ID</h1></th>
    <th width="88"><h1 class="mycarTophd">Name</h1></th>
    <th width="88"><h1 class="mycarTophd">Address</h1></th>
    <th width="60"><h1 class="mycarTophd">City</h1></th>
    <th width="80"><h1 class="mycarTophd">State</h1></th>
    <th width="70"><h1 class="mycarTophd">Mobile</h1></th>
    <th width="88"><h1 class="mycarTophd">E-Mail</h1></th>
    <th width="82"><h1 class="mycarTophd">Date Of Birth</h1></th>
    <th width="80"><h1 class="mycarTophd">IncomeGroup</h1></th>
    <th width="65"><h1 class="mycarTophd">Occuption</h1></th>
  </tr>
             <%
                while(i.hasNext())
                    {
                    String name=(String)i.next();

               %>
                <tr><td align="center"><input type="checkbox" name="check" value="<%=name%>"></td>
                     <td align="center"><%=name%></td>
                     
                      <td align="center"><%=i.next()%></td>
                       <% String s=(String)i.next();%>
                       <td align="center"><%=i.next()%></td>
                        <td align="center"><%=i.next()%></td>
                       <%
                        Connection con=null;
                        Connect co=new Connect();
                     con=co.setCon();
                     String model1=(String)i.next();

                    try
                      {
                       PreparedStatement pn=con.prepareStatement("Select * from state where sid='"+model1+"'");
                       ResultSet rsn=pn.executeQuery();
                          if(rsn.next())
                                      {
                                      String state=rsn.getString(2);%>
                                       <td align="center"><%=state%></td>
                                      <%}
                              }
                          catch(Exception e)
                                  {}
                    %>
                         <% int s4=(Integer)i.next();
                              int s5=(Integer)i.next();
                              int s6=(Integer)i.next();%>
                          <td align="center"><%=i.next()%></td>
                          <td align="center"><%=i.next()%></td>
                          <td align="center"><%=i.next()%></td>
                          <td align="center"><%=i.next()%></td>
                          <td align="center"><%=i.next()%></td>

                          <td><a href="CustomerUpdate.jsp?na=<%=name%>"><font color="maroon">update</font></a></td></tr>
          <%}%> </table><br><input value="<< Delete!" class="submitBtn" onMouseOver="this.className='submitBtnA'" onMouseOut="this.className='submitBtn'"  style="width: 130px;" type="Submit"></div>
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





