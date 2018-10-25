<%--
    Document   : salex
    Created on : Mar 14, 2011, 11:10:51 AM
    Author     : Rohit Pachouli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="myconnection.Connect,java.sql.*,java.util.*,crm.CustomerUpdate"%>
<jsp:useBean id="dd" class="crm.State"/>
<jsp:setProperty name="dd" property="*"/>
<jsp:useBean id="d" class="crm.Bill_Display"/>
<jsp:setProperty name="d" property="*"/>
<html>
<head>
<!-- base href="http://www.sagarauto.com/" -->
<title>Bill information</title>
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

<![endif]-->
<script language="javascript" type="text/javascript" src="signup_files/common.js"></script>
<script language="javascript" type="text/javascript" src="signup_files/v.js"></script>
<script language="javascript" type="application/javascript" src="js/salex.js"></script>
<script language="javascript">
    function printr()
    {
        
        window.print();
    }
</script>
</head>
<body onLoad="javascript:document.getElementById('txtemail').focus();">
<form name="frmsignup" action="BillDetail.jsp" method="post">
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
	<div id="sBc"><span class="breadCrumb"><a href="http://www.sagarauto.com/mylogin.htm"></a>Bill Detail</span></div>
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
		
		 <%
        String name=request.getParameter("bill");
          Connection con=null;
          String custo=null;
           String invoic=null;
           String bill=null;
    try
    {
        Connect co=new Connect();
        con=co.setCon();
        PreparedStatement ps=con.prepareStatement("Select * from bill where b_id=?");
        ps.setString(1,name);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
            custo=rs.getString("us");
            invoic=rs.getString("invoice");
            bill=rs.getString("b_id");
        }
        else
        {
           response.sendRedirect("BillDetail.jsp");
        }
   
           ArrayList ab=d.selectBill(bill);System.out.println("dfdfd"+ab);
           Iterator ib=ab.iterator();
            if(ib.hasNext())
                {
          %>
        <div class="myProRqFld" style="padding-right: 11px;"><span style="color: red; font-weight: bold;">&nbsp;</span><span style="color: red;"> </span><b>Bill No.</b><%=ib.next()%></div>
                <div class="signBox">
                    <%
                    String b1=(String)ib.next();
                    String b2=(String)ib.next();
                    String b3=(String)ib.next();
                    String b4=(String)ib.next();
                    String b5=(String)ib.next();
                    %>
			
                        			<h2 class="tabbgB">Bill Information</h2>
			<div class="signRow">
				<div class="signLbl"><b>Bill Date</b></div>
				<div class="signFldC">
                                    <%=ib.next()%>
                                </div>
                        </div>
                                <div class="signRow">
				<div class="signLbl"><b>Amount</b></div>
				<div class="signFldC">
                                   <%=ib.next()%>
                                </div>
                        </div> <% String b6=(String)ib.next();
                              %>

                        <div class="signRow">
				<div class="signLbl"><b>ShowRoom</b></div>
				<div class="signFldC">
                                   <%=ib.next()%>
                                </div><%}%>
                        </div>
			</div>

                <%
           ArrayList ar=d.select1(custo);
           Iterator i=ar.iterator();
            if(i.hasNext())
                {
          %>
			<div class="signBox">
			<h2 class="tabbgB">Customer Information</h2>
			<div class="signRow"><%String c1=(String)i.next();%>
				<div class="signLbl"> <b>Name</b></div>
				<div class="signFldC">
                                   <%=i.next()%>
                                </div>
                        </div>
			<%String c3=(String)i.next();%>
			<div class="signRow">
				<div class="signLbl"><b>Address</b></div>
				<div class="signFldC">
                                    <%=i.next()%>
                                </div>
                        </div>
                        <div class="signRow">
				<div class="signLbl"><b> City</b></div>
				<div class="signFldC">
                                   <%=i.next()%>
                                </div>
                        </div>
                            <%String c6=(String)i.next();
                            int c7=(Integer)i.next();
                            int c8=(Integer)i.next();
                            int c9=(Integer)i.next();
                            %>
                       <div class="signRow">
				<div class="signLbl"><b>Mobile</b></div>
				<div style="float: left; width: 118px; padding-left: 5px;">
				  <%=i.next()%>          
                                </div>
			</div>
                           <div class="signRow">
				<div class="signLbl"><b> Email</b></div>
				<div class="signFldC">
                                   <%=i.next()%>	
                                </div>
                        </div>
                        <%}%>
			</div>
			<div class="signBox">
				<div style="background: transparent url(../images/mycar/divider_signup_02.jpg) no-repeat scroll left bottom; height: 122px; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous;">
			
			<h2 class="tabbgB">Model Detail</h2>
                         <%
           ArrayList ai=d.selectInvoice(invoic);
           Iterator ii=ai.iterator();
            if(ii.hasNext())
                {
          %>
                       <div class="signRow">
				<div class="signLbl"><b>Invoice No.</b></div>
				<div class="signFldC">
                                   <%=ii.next()%>
                                </div>
                        </div>
			<div class="signRow">
				<div class="signLbl"><b>Engine No.</b></div>
				<div class="signFldC">
                                    <%=ii.next()%>
                                </div>
                        </div>
			<div class="signRow">
				<div class="signLbl"><b>Chachis No.</b></div>
				<div class="signFldC">
                                    <%=ii.next()%>
                                </div>
                        </div>
                                <%
                                String model=(String)ii.next();
                                     try
                                  {
                       PreparedStatement ps12=con.prepareStatement("Select * from porduct_id where mid='"+model+"'");
                       ResultSet rs12=ps12.executeQuery();
                       if(rs12.next())
                        {
                            String mname=rs12.getString("model");
                            System.out.println("dfdfd");
                           %>
                        <div class="signRow">
				<div class="signLbl"><b>Model</b></div>
				<div class="signFldC">
                                    <%=mname%><%
                                    }
                            }
                        catch(Exception e)
                            {
                            out.println(e);
                             }
                             %>
                                </div>
                        </div>
                                <%
                                String varient=(String)ii.next();
                                     try
                                  {
                       PreparedStatement ps123=con.prepareStatement("Select * from varient where vid='"+varient+"'");
                       ResultSet rs123=ps123.executeQuery();
                       if(rs123.next())
                        {
                            String vname=rs123.getString("vname");
                           %>
                        <div class="signRow">
				<div class="signLbl"><b>Varient</b></div>
				<div class="signFldC">
                                    <%=vname%><%
                                    }
                            }
                        catch(Exception e)
                            {
                             }
                             %>
                                </div></div>
                                 <%
                                String color=(String)ii.next();
                                     try
                                  {
                       PreparedStatement ps123=con.prepareStatement("Select * from colors where cid='"+color+"'");
                       ResultSet rs123=ps123.executeQuery();
                       if(rs123.next())
                        {
                            String cname=rs123.getString(2);
                           %>
                        <div class="signRow">
				<div class="signLbl"><b>Color</b></div>
				<div class="signFldC">
                                    <%=cname%><%
                                    }
                            }
                        catch(Exception e)
                            {
                            out.println(e);
                             }
                             %>
                             <%}
           }
    catch(Exception e)
    {
        out.println("bille detail page have error"+e);
    }
        %>
                                </div>
                        </div>
                        </div>
			
			

			<div style="width: 265px;">

				<div style="float: left;"><!-- <input type="reset" value="" alt="Reset" title="Reset" class="resetButn" onmouseover="this.className='resetButnA'" onmouseout="this.className='resetButn'" onclick="document.getElementById('txtemail').focus();" tabindex="20" /> --></div>
                                <div class="signFldC">  <div style="float: right;"><input value="<< OK!" class="submitBtn" onMouseOver="this.className='submitBtnA'" onMouseOut="this.className='submitBtn'" tabindex="18" style="width: 130px;" type="button" onclick="printr()"></div>
				</div></div>
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
