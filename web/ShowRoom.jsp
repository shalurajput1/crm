<%--
    Document   : Color
    Created on : Mar 16, 2011, 3:37:58 AM
    Author     : Rohit Pachouli
--%>

<html><head>
<!-- base " -->
<title>home</title>
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
<LINK rel="stylesheet" type="text/css" href="css/cw-common-new.css">
<LINK rel=stylesheet type="text/css" href="css/research_new.css">
<SCRIPT language="javascript" type="text/javascript" src="css/jquery.min.js"></SCRIPT>
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
<%
     request.getSession(true);
     String s12=(String)session.getAttribute("name");%>
Welcome <%=s12%> &nbsp;|&nbsp;
<a href="Login.jsp" class="lHome">Login</a>&nbsp;|&nbsp;
<a href="Home.jsp" class="lHome">Home</a></div>
<div id="makelogoU"><div id="makelogo"><img src="signup_files/imagesm.jpg"  alt="Logo of Maruti Suzuki" title="Logo of Maruti Suzuki"> </div></div>
<div align="right"><div id="makelogo"><img src="signup_files/imagesm.jpg" alt="Logo of Maruti Suzuki" title="Logo of Maruti Suzuki"> </div></div>
<!-- Begin Banner Code -->
<!-- End Banner Code -->
</div>
    <ul id="nav" class="dropdown dropdown-horizontal">
	<li><a href="Home.jsp">Home</a></li>
	<li class="dir">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Staff
		<ul>
			<li><a href="salex.jsp">Staff Entry</a></li>
			<li><a href="Salesmanager_Display.jsp">Staff Details</a></li>
			<li><a href="Saleman_SimpleDisplay.jsp">Salesman Details</a></li>

		</ul>
	</li>
	<li ><a href="Customer_Simpledisplay.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Customer</a>

	</li>
	<li class="dir">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Model
		<ul>
			<li><a href="Invoice.jsp">Entry</a>
		       </li>
			<li><a href="Invoice_Display.jsp">Edit</a>
			</li>
			<li><a href="Invoice_SimpleDisplay.jsp">Display</a>
			</li>
		</ul>
	</li>
	<li class="dir">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quota
			<ul><li><a href="Quota.jsp"> Assign</a>
		       </li>
			<li><a href="Quota_Display.jsp">View</a>
			</li>

		</ul></li>
        <li><a href="BillDetail.jsp">&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bill Details</a></li>
	<li><a href="./">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inventory</a></li>
	<li class="dir">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Margin
		<ul><li><a href="Dmsimple_Display.jsp">Display Margin</a>
		       </li>
			<li><a href="DelarMar.jsp">Set Margin</a>
			</li>
                          <li><a href="DelearMargin_Display.jsp">Edit Margin</a>
			</li>
		</ul>
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

		<DIV id="mc">
<DIV><!-- hearder starts here --></div>
<DIV><!-- body content start here -->
<STYLE type="text/css">.dvShrink {
	DISPLAY: none
}
.dvDisplay {
	PADDING-LEFT: 10px; DISPLAY: block
}
.blue-imgblock {
	BORDER-BOTTOM: #c1d9e5 1px solid; BORDER-LEFT: #c1d9e5 1px solid; PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; BORDER-TOP: #c1d9e5 1px solid; CURSOR: pointer; BORDER-RIGHT: #c1d9e5 1px solid; PADDING-TOP: 5px
}
.insert-after {
	BORDER-BOTTOM: #c1d9e5 1px solid; BORDER-LEFT: #c1d9e5 1px solid; BACKGROUND-COLOR: #fff; WIDTH: 637px; BORDER-TOP: #c1d9e5 1px solid; BORDER-RIGHT: #c1d9e5 1px solid
}
.sel-state {
	Z-INDEX: 2; POSITION: relative; BACKGROUND-COLOR: #fff; WIDTH: 209px; HEIGHT: 3px; FONT-SIZE: 0px; TOP: 2px
}
.unsel-state {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
.state-tab {
	BORDER-BOTTOM: #c1d9e5 1px solid; BORDER-LEFT: #c1d9e5 1px solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ebf9ff; MARGIN-TOP: 3px; PADDING-LEFT: 0px; WIDTH: 209px; PADDING-RIGHT: 0px; MARGIN-BOTTOM: 0px; FLOAT: left; BORDER-TOP: #c1d9e5 1px solid; MARGIN-RIGHT: 3px; BORDER-RIGHT: #c1d9e5 1px solid; PADDING-TOP: 0px
}
.state-tab .hd3 {
	CURSOR: pointer
}
.mar-bot {
	MARGIN-BOTTOM: 5px
}
.expnd-cont {
	MARGIN: 0px
}
</StYLE>

<SCRIPT language="javascript">
	function showCity(stateId, obj){
		var selTabObj = $(obj);
		var selectedState = $("#tbl-" + stateId);
		var selectedImg = $("#dv-" + stateId).find("span.icon-sheet");
		var manageArrowImgs = $("#stateTabs span.icon-sheet");

		$("div.expnd-cont").remove();
		$("div.sel-state").toggleClass('sel-state unsel-state');
		$("div.state-tab").css({"background-color":"#EBF9FF"});

		if( manageArrowImgs.hasClass("down-arrow") ){
			manageArrowImgs.removeClass('down-arrow').addClass('right-arrow-bg');
		}

		selTabObj.find(".hd3").removeClass("mar-bot");

		var index = $("div.state-tab").index(selTabObj);
		var indexLength = $("div.state-tab").length - 1;
		var insertAfter = 3-(index%3)-1;
		var indexDiff = indexLength - index;
		var exndCont = "<div class='expnd-cont'><div class='clear'></div><div class='insert-after'>"+ selectedState.html()  +"</div></div>";

		if(selectedState.hasClass("dvShrink")){
			if( insertAfter == 0 ||( insertAfter == 2 && index == indexLength )){
				$(exndCont).insertAfter(selTabObj);
			}else if( insertAfter == 1 && indexDiff >= 1 ){
				$(exndCont).insertAfter(selTabObj.next());
			}else if( insertAfter == 2 && indexDiff >= 2 ){
				$(exndCont).insertAfter(selTabObj.next().next());
			}else{
				if( insertAfter == 1 && indexDiff < 1 ){
					$(exndCont).insertAfter(selTabObj);
				}else if( insertAfter == 2 && indexDiff < 2 ){
					$(exndCont).insertAfter(selTabObj.next());
				}
			}

			selTabObj.find("#merge-sel").toggleClass('unsel-state sel-state');
			selTabObj.find(".hd3").addClass("mar-bot");
			selTabObj.css({"background-color":"#fff"});

			selectedImg.removeClass('right-arrow-bg').addClass('down-arrow');
		}
	}
</SCRIPT>

    <DIV class="left-grid">
<H1 class=hd1>Maruti Suzuki Dealers/Showrooms in India</H1>
<P class=text-grey>Maruti Suzuki sells cars through 452 dealerships in 253
cities across India.</P>
<DIV align="center"
style="BORDER-BOTTOM: #fff 1px solid; BORDER-LEFT: #fff 1px solid; BORDER-TOP: #fff 1px solid; BORDER-RIGHT: #fff 1px solid"
id=stateTabs class=mid-box>
<DIV id=dv-7 class=state-tab onClick="javascript:showCity('7', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>Andaman
Nicobar</SPAN></H3>
    <DIV id=tbl-7 class=dvShrink >
    <TABLE style="WIDTH: 100%" id=rptState_ctl00_dlCity border=0 cellSpacing=10 align="center"
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Port
      Blair<BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-6 class=state-tab onClick="javascript:showCity('6', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>Andhra
Pradesh</SPAN></H3>
<DIV id=tbl-6 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl01_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Anantapur
      <BR></TD>
    <TD>Bhimavaram
      <BR></TD>
    <TD>Guntur
      <BR></TD></TR>
  <TR>
    <TD>Hyderabad
       <BR></A></TD>
    <TD>Karimnagar
      <BR></TD>
    <TD>Kurnool
      <BR></TD></TR>
  <TR>
    <TD>Nellore
      <BR></A></TD>
    <TD>Nizamabad
      <BR></TD>
    <TD>Ongole
      <BR></TD></TR>
  <TR>
    <TD>Rajahumundry
      <BR></TD>
    <TD>Secunderabad
      <BR></TD>
    <TD>Srikakulam
      <BR></TD></TR>
  <TR>
    <TD>Tirupati
      <BR></TD>
    <TD>Vijaywada
       <BR></TD>
    <TD>Vishakhapatnam
       <BR></TD></TR>
  <TR>
    <TD>Warangal
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-35 class=state-tab onClick="javascript:showCity('35', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>Arunachal
Pradesh</SPAN></H3>
<DIV id=tbl-35 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl02_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>
      <BR></A></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-16 class=state-tab onClick="javascript:showCity('16', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>Assam</SPAN></H3>
<DIV id=tbl-16 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl03_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Bongaigaon
      <BR></TD>
    <TD>Dibrugarh
      <BR></TD>
    <TD>Golaghat
      <BR></A></TD></TR>
  <TR>
    <TD>Guwahati
       <BR></A></TD>
    <TD>Jorhat
      <BR></TD>
    <TD>Nagaon
      <BR></A></TD></TR>
  <TR>
    <TD>North
      Lakhimpur <BR></TD>
    <TD>Sibsagar
      <BR></TD>
    <TD>Silchar
      <BR></TD></TR>
  <TR>
    <TD>Tezpur
      <BR></TD>
    <TD>Tinsukia
      <BR></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-14 class=state-tab onClick="javascript:showCity('14', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>Bihar</SPAN></H3>
<DIV id=tbl-14 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl04_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Begusarai
      <BR></TD>
    <TD>Bhagalpur
      <BR></TD>
    <TD>Bodh
      Gaya <BR></A></TD></TR>
  <TR>
    <TD>Darbhanga
      <BR></A></TD>
    <TD>Muzaffurpur
      <BR></TD>
    <TD>Patna
       <BR></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-21 class=state-tab onClick="javascript:showCity('21', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Chandigarh</SPAN></H3>
<DIV id=tbl-21 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl05_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Chandigarh
       <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-8 class=state-tab onClick="javascript:showCity('8', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Chhattisgarh</SPAN></H3>
<DIV id=tbl-8 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl06_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Ambikapur
      <BR></TD>
    <TD>Bhilai
      <BR></TD>
    <TD>Bilaspur
      <BR></TD></TR>
  <TR>
    <TD>Jagdalpur
      <BR></TD>
    <TD>Korba
      <BR></TD>
    <TD>Raipur
       <BR></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-5 class=state-tab onClick="javascript:showCity('5', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>Delhi</SPAN></H3>
<DIV id=tbl-5 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl07_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>New
      Delhi <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-17 class=state-tab onClick="javascript:showCity('17', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>Goa</SPAN></H3>
<DIV id=tbl-17 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl08_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Goa
       <BR></A></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-9 class=state-tab onClick="javascript:showCity('9', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Gujarat</SPAN></H3>
<DIV id=tbl-9 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl09_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Ahmedabad
       <BR></TD>
    <TD>Anand
      <BR></TD>
    <TD>Bharuch
      <BR></TD></TR>
  <TR>
    <TD>Bhavnagar
      <BR></TD>
    <TD>Bhuj
      Kuchchh <BR></TD>
    <TD>Gandhi
      Nagar <BR></TD></TR>
  <TR>
    <TD>Gandhidham
      <BR></TD>
    <TD>Godhra
      <BR></TD>
    <TD>Himmatnagar
      <BR></TD></TR>
  <TR>
    <TD>Jamnagar
      <BR></TD>
    <TD>Junagadh
      <BR></A></TD>
    <TD>Mahesana
      <BR></TD></TR>
  <TR>
    <TD>Morbi
      <BR></A></TD>
    <TD>Palanpur
      <BR></TD>
    <TD>Porbandar
      <BR></TD></TR>
  <TR>
    <TD>Rajkot
       <BR></TD>
    <TD>Surat
       <BR></TD>
    <TD>Vadodara
       <BR></TD></TR>
  <TR>
    <TD>Vapi
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-22 class=state-tab onClick="javascript:showCity('22', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Haryana</SPAN></H3>
<DIV id=tbl-22 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl10_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Ambala
       <BR></TD>
    <TD>Bhiwani
      <BR></TD>
    <TD>Faridabad
       <BR></TD></TR>
  <TR>
    <TD>Fatehabad
      <BR></TD>
    <TD>Gurgaon
       <BR></TD>
    <TD>Hissar
       <BR></TD></TR>
  <TR>
    <TD>Kaithal
      <BR></TD>
    <TD>Karnal
       <BR></TD>
    <TD>Kurukshetra
      <BR></TD></TR>
  <TR>
    <TD>Panchkula
       <BR></TD>
    <TD>Panipat
      <BR></TD>
    <TD>Rewari
      <BR></TD></TR>
  <TR>
    <TD>Rohtak
      <BR></TD>
    <TD>Sirsa
      <BR></TD>
    <TD>Sonepat
      <BR></TD></TR>
  <TR>
    <TD>Yamunanagar
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-33 class=state-tab onClick="javascript:showCity('33', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>Himachal
Pradesh</SPAN></H3>
<DIV id=tbl-33 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl11_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Hamirpur
      <BR></TD>
    <TD>Mandi
      <BR></TD>
    <TD>Shimla
      <BR></TD></TR>
  <TR>
    <TD>Solan
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-24 class=state-tab onClick="javascript:showCity('24', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>Jammu &amp;
Kashmir</SPAN></H3>
<DIV id=tbl-24 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl12_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Jammu
       <BR></TD>
    <TD>Srinagar
       <BR></TD>
    <TD>Udhampur
      <BR></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-23 class=state-tab onClick="javascript:showCity('23', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Jharkhand</SPAN></H3>
<DIV id=tbl-23 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl13_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Bokaro
      Steel City <BR></TD>
    <TD>Dhanbad
      <BR></TD>
    <TD>Hazaribagh
      <BR></TD></TR>
  <TR>
    <TD>Jamshedpur
       <BR></TD>
    <TD>Ranchi
       <BR></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-2 class=state-tab onClick="javascript:showCity('2', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Karnataka</SPAN></H3>
<DIV id=tbl-2 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl14_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Bangalore
      (12)<BR></TD>
    <TD>Belgaum
      <BR></TD>
    <TD>Bellary
      <BR></TD></TR>
  <TR>
    <TD>Bijapur
      <BR></TD>
    <TD>Davangere
      <BR></TD>
    <TD>Gulbarga
      <BR></TD></TR>
  <TR>
    <TD>Hassan
      <BR></TD>
    <TD>Hospet
      <BR></A></TD>
    <TD>Hubli
       <BR></TD></TR>
  <TR>
    <TD>Mangalore
       <BR></TD>
    <TD>Murdeshwar
      <BR></TD>
    <TD>Mysore
       <BR></A></TD></TR>
  <TR>
    <TD>Shimoga
      <BR></TD>
    <TD>Tumkur
      <BR></TD>
    <TD>Udupi
      <BR></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-4 class=state-tab onClick="javascript:showCity('4', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Kerala</SPAN></H3>
<DIV id=tbl-4 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl15_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Alleppey
      <BR></TD>
    <TD>Calicut
       <BR></TD>
    <TD>Cochin
       <BR></TD></TR>
  <TR>
    <TD>Kannur
      <BR></TD>
    <TD>Kasaragod
      <BR></TD>
    <TD>Kottayam
       <BR></TD></TR>
  <TR>
    <TD>Malappuram
      <BR></TD>
    <TD>Muvattupuzha
      <BR></TD>
    <TD>Pallakad
      <BR></TD></TR>
  <TR>
    <TD>Pathanamthitta
      <BR></TD>
    <TD>Perinthalmanna
      <BR></TD>
    <TD>Quilon
      <BR></TD></TR>
  <TR>
    <TD>Thrissur
       <BR></TD>
    <TD>Trivandrum
       <BR></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-3 class=state-tab onClick="javascript:showCity('3', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>Madhya
Pradesh</SPAN></H3>
<DIV id=tbl-3 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl16_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Bhopal
       <BR></TD>
    <TD>Chhindwara
      <BR></TD>
    <TD>Guna
      <BR></TD></TR>
  <TR>
    <TD>Gwalior
      <BR></TD>
    <TD>
      href=Indore
       <BR></TD>
    <TD>Jabalpur
       <BR></TD></TR>
  <TR>
    <TD>Khargone
      <BR></A></TD>
    <TD>Ratlam
      <BR></TD>
    <TD>Sagar
      <BR></TD></TR>
  <TR>
    <TD>
      Satna
      <BR></TD>
    <TD>
      Ujjain
      <BR></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-1 class=state-tab onClick="javascript:showCity('1', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Maharashtra</SPAN></H3>
<DIV id=tbl-1 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl17_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>
      Ahmadnagar
      <BR></TD>
    <TD>
      Akola
      <BR></TD>
    <TD>
      Amravati
      <BR></TD></TR>
  <TR>
    <TD>
      Aurangabad
       <BR></TD>
    <TD>
      Baramati
      <BR></TD>
    <TD>
      Beed
      <BR></TD></TR>
  <TR>
    <TD>
      Chandrapur
      <BR></TD>
    <TD>
      Dhule
      <BR></TD>
    <TD>
      Jalgaon
      <BR></TD></TR>
  <TR>
    <TD>
      Kolhapur
       <BR></TD>
    <TD>
      Latur
      <BR></TD>
    <TD>
      Mumbai
      <BR></TD></TR>
  <TR>
    <TD>
      Nagpur
       <BR></TD>
    <TD>
      Nanded
      <BR></TD>
    <TD>
      Nashik
       <BR></TD></TR>
  <TR>
    <TD>
      Panvel
      <BR></TD>
    <TD>
      Pune
      <BR></TD>
    <TD>
      Ratnagiri
      <BR></TD></TR>
  <TR>
    <TD>
      Sangamner
      <BR></TD>
    <TD>
      Sangli
      <BR></TD>
    <TD>
      Satara
      <BR></TD></TR>
  <TR>
    <TD>
      Sholapur
      <BR></TD>
    <TD>
      Thane
       <BR></TD>
    <TD>
      Yavatmal
      <BR></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-36 class=state-tab onClick="javascript:showCity('36', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Manipur</SPAN></H3>
<DIV id=tbl-36 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl18_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>
      Imphal
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-13 class=state-tab onClick="javascript:showCity('13', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Meghalaya</SPAN></H3>
<DIV id=tbl-13 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl19_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>
      Shillong
       <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-27 class=state-tab onClick="javascript:showCity('27', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Mizoram</SPAN></H3>
<DIV id=tbl-27 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl20_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>
      Aizwal
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-28 class=state-tab onClick="javascript:showCity('28', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Nagaland</SPAN></H3>
<DIV id=tbl-28 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl21_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>
      Dimapur
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-20 class=state-tab onClick="javascript:showCity('20', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Orissa</SPAN></H3>
<DIV id=tbl-20 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl22_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>
      Angul
      <BR></TD>
    <TD>
      Balasore
      <BR></TD>
    <TD>
      Berhampur
      <BR></TD></TR>
  <TR>
    <TD>Bhubaneswar
       <BR></TD>
    <TD>
      Cuttack
      <BR></TD>
    <TD>Rourkela
      <BR></TD></TR>
  <TR>
    <TD>
      Sambalpur
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-37 class=state-tab onClick="javascript:showCity('37', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Pondicherry</SPAN></H3>
<DIV id=tbl-37 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl23_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Pondicherry
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-18 class=state-tab onClick="javascript:showCity('18', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Punjab</SPAN></H3>
<DIV id=tbl-18 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl24_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Abohar
      <BR></TD>
    <TD>Amritsar
       <BR></TD>
    <TD>Bathinda
      <BR></TD></TR>
  <TR>
    <TD>Firozpur
      <BR></TD>
    <TD>Hoshiarpur
      <BR></TD>
    <TD>Jalandhar
       <BR></TD></TR>
  <TR>
    <TD>Ludhiana
       <BR></TD>
    <TD>Mandi
      Gobindgarh <BR></TD>
    <TD>Moga
      <BR></TD></TR>
  <TR>
    <TD>Mohali
      <BR></TD>
    <TD>Muktsar
      <BR></A></TD>
    <TD>Nagrota
      <BR></TD></TR>
  <TR>
    <TD>Nawanshahr
      <BR></TD>
    <TD>Pathankot
      <BR></TD>
    <TD>Patiala
      <BR></TD></TR>
  <TR>
    <TD>Rajpura
      <BR></TD>
    <TD>Rupnagar
      <BR></TD>
    <TD>Sangrur
      <BR></TD></TR>
  <TR>
    <TD>Zirakpur
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-10 class=state-tab onClick="javascript:showCity('10', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Rajasthan</SPAN></H3>
<DIV id=tbl-10 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl25_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Ajmer
       <BR></TD>
    <TD>Alwar
      <BR></TD>
    <TD>Banswara
      <BR></TD></TR>
  <TR>
    <TD>Bharatpur
      <BR></TD>
    <TD>Bhilwara
       <BR></TD>
    <TD>Bikaner
      <BR></TD></TR>
  <TR>
    <TD>Chittorgarh
      <BR></TD>
    <TD>Jaipur
       <BR></TD>
    <TD>Jhunjhunu
      <BR></TD></TR>
  <TR>
    <TD>Jodhpur
       <BR></TD>
    <TD>Kota
       <BR></TD>
    <TD>Pali
      <BR></TD></TR>
  <TR>
    <TD>Rajsamand
      <BR></TD>
    <TD>Sikar
      <BR></TD>
    <TD>Sriganganagar
      <BR></TD></TR>
  <TR>
    <TD>Udaipur
       <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-32 class=state-tab onClick="javascript:showCity('32', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Sikkim</SPAN></H3>
<DIV id=tbl-32 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl26_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Gangtok
      <BR><</TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-11 class=state-tab onClick="javascript:showCity('11', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>Tamil
Nadu</SPAN></H3>
<DIV id=tbl-11 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl27_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Chennai
      <BR></TD>
    <TD>Coimbatore
       <BR></TD>
    <TD>Cuddalore
      <BR></TD></TR>
  <TR>
    <TD>Dindigul
      <BR></TD>
    <TD>Erode
      <BR></TD>
    <TD>Hosur
      <BR></TD></TR>
  <TR>
    <TD>Karur
      <BR></TD>
    <TD>Madurai
       <BR></TD>
    <TD>Mallapuram
      <BR></TD></TR>
  <TR>
    <TD>Nagercoil
      <BR></TD>
    <TD>Namakkal
      <BR></TD>
    <TD>Salem
      <BR></TD></TR>
  <TR>
    <TD>Sivakasi
      <BR></TD>
    <TD>Thanjavur
      <BR></TD>
    <TD>Tirunelveli
      <BR></TD></TR>
  <TR>
    <TD>Tiruppur
      <BR></TD>
    <TD>Trichy
       <BR></TD>
    <TD>Tuticorin
      <BR></TD></TR>
  <TR>
    <TD>Vellore
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-26 class=state-tab onClick="javascript:showCity('26', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Tripura</SPAN></H3>
<DIV id=tbl-26 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl28_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Agartala
      <BR></A></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-15 class=state-tab onClick="javascript:showCity('15', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>Uttar
Pradesh</SPAN></H3>
<DIV id=tbl-15 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl29_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Agra
       <BR></A></TD>
    <TD>Aligarh
      <BR></TD>
    <TD>Allahabad
       <BR></TD></TR>
  <TR>
    <TD>Azamgarh
      <BR></TD>
    <TD>Bareli
       <BR></TD>
    <TD>Faizabad
      <BR></TD></TR>
  <TR>
    <TD>Ghaziabad
       <BR></TD>
    <TD>Gorakhpur
      <BR></TD>
    <TD>Jhansi
      <BR></TD></TR>
  <TR>
    <TD>Kanpur
       <BR></TD>
    <TD>Lucknow
       <BR></TD>
    <TD>Mathura
      <BR></TD></TR>
  <TR>
    <TD>Meerut
       <BR></TD>
    <TD>Moradabad
      <BR></TD>
    <TD>Muzaffarnagar
      <BR></TD></TR>
  <TR>
    <TD>Noida
       <BR></TD>
    <TD>Saharanpur
      <BR></TD>
    <TD>Shahjahanpur
      <BR></TD></TR>
  <TR>
    <TD>Varanasi
       <BR></A></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-25 class=state-tab onClick="javascript:showCity('25', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN
class="icon-sheet right-arrow-bg"></SPAN><SPAN>Uttaranchal</SPAN></H3>
<DIV id=tbl-25 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl30_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Dehradun
       <BR></TD>
    <TD>Haldwani
      <BR></TD>
    <TD>Roorkee
      <BR></TD></TR>
  <TR>
    <TD>Rudrapur
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>
<DIV id=merge-sel class=unsel-state></DIV></DIV>
<DIV id=dv-12 class=state-tab onClick="javascript:showCity('12', this);">
<H3
style="PADDING-BOTTOM: 0px; MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
class=hd3><SPAN class="icon-sheet right-arrow-bg"></SPAN><SPAN>West
Bengal</SPAN></H3>
<DIV id=tbl-12 class=dvShrink>
<TABLE style="WIDTH: 100%" id=rptState_ctl31_dlCity border=0 cellSpacing=10
cellPadding=0>
  <TBODY>
  <TR>
    <TD>Asansol
      <BR></TD>
    <TD>Bardhaman
      <BR></TD>
    <TD>Howrah
      <BR></TD></TR>
  <TR>
    <TD>Kharagpur
      <BR></TD>
    <TD>Kolkata
       <BR></TD>
    <TD>Malda
      <BR></TD></TR>
  <TR>
    <TD>Siliguri
      <BR></TD>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE></DIV>

<DIV id=merge-sel class=unsel-state></DIV></DIV></DIV>
<DIV class=clear></DIV>
</div></div>

<DIV style="CLEAR: both"></DIV></DIV></div></div>






<!-- Footer starts here -->


	</div>
</div>



<!-- footer -->
<div id="footer">

<!-- footer -->
</div>

    
</body></html>


