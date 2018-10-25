/*Used Car Special*/
function ValidPwd()
{
	
	document.getElementById('emailId').value = trim(document.getElementById('emailId').value)
	if (document.getElementById('emailId').value!="" && !valid_email(document.getElementById('emailId').value)){ 
		alert("Please enter valid email id");
		document.getElementById('emailId').focus();
		return false;
	}
	if(document.getElementById('emailId').value == ""){
		alert("Please enter email id");
		document.getElementById('emailId').focus();
		return false;
	}
	return true;
}

function validateLogin()
{
	var logEmail = document.getElementById("txtemail");
	var logPword = document.getElementById("loginPword");
	logEmail.value = trim(logEmail.value);	
	logPword.value = trim(logPword.value);
	if(document.getElementById('txtemail').value==""){ 
		alert("Please enter e-mail id");
		document.getElementById('txtemail').focus();
		return false;
	}
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();
	if(logPword.value == ""){
		alert("Please enter password");
		logPword.focus();
		return false;
	}	
}
function chkchgpwd(){
	document.getElementById('curpwd').value = trim(document.getElementById('curpwd').value)
	document.getElementById('chgpwd').value = trim(document.getElementById('chgpwd').value)
	document.getElementById('confmpwd').value = trim(document.getElementById('confmpwd').value)
	
	if(document.getElementById('curpwd').value == "")
	{
		alert("Please enter current password");
		document.getElementById('curpwd').focus();
		return false;
	}
		
	if(document.getElementById('chgpwd').value == "")
	{
		alert("Please enter new password");
		document.getElementById('chgpwd').focus();
		return false;
	}
	if(document.getElementById('chgpwd').value.length < 6)
	{
		alert("New password should not be less than 6 characters");
		document.getElementById('chgpwd').focus();
		return false;
	}
	
	 if(document.getElementById('chgpwd').value == document.getElementById('curpwd').value)
	{
		alert("New password should be other than old password");
		document.getElementById('chgpwd').focus();
		return false;
	}
	if(document.getElementById('confmpwd').value == "")
	{
		alert("Please enter confirm password");
		document.getElementById('confmpwd').focus();
		return false;
	}
	if(document.getElementById('confmpwd').value.length < 6)
	{
		alert("Confirm password should be less than 6 characters");
		document.getElementById('confmpwd').focus();
		return false;
	}
	if(document.getElementById('confmpwd').value != document.getElementById('chgpwd').value)
	{
		alert("New password and confirm password should be same");
		document.getElementById('confmpwd').focus();
		return false;
	}
	else
	{
		return true;
	}

}
function chkusdspcmdl(){
	if(document.getElementById('cmbModel').value == "")
	{
		alert("Please select model")	
		document.getElementById('cmbModel').focus();
		return false;
	}
	else
	{
		return true;	
	}
}
function checkHeight() {
	var divObj = document.getElementById("usedGrid");
	var offsetObj = document.getElementById("usedGridA");
	if(offsetObj.offsetHeight <= 314) {
		divObj.style.height = 314+"px";
	}else {
		divObj.style.height = offsetObj.offsetHeight+"px";
	}
}
//Edit profile
function chkeditprofile(){

	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtadd1').value = trim(document.getElementById('txtadd1').value);
	document.getElementById('txtcity').value = trim(document.getElementById('txtcity').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();
	
	if(document.getElementById('txtadd1').value == ""){
		alert("Please enter address");
		document.getElementById('txtadd1').focus();
		return false;
	}
	document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();
	
	if(document.getElementById('txtadd2').value != ""){
		document.getElementById('txtadd2').value = (document.getElementById('txtadd2').value).ucfirst();	
	}
	
	if(!isName(document.getElementById('txtcity'))){ 
		alert("Please enter city");
		document.getElementById('txtcity').focus();
		return false;
	}
	document.getElementById('txtcity').value = (document.getElementById('txtcity').value).ucfirst();
	
	if(document.getElementById('txtpcode').value == ""){ 
		alert("Please enter pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	if(document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);

	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;
	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}
	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}
	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	
}	
//add details
function chkaddetails(){
	document.getElementById('cmbmfmn').value = trim(document.getElementById('cmbmfmn').value)
	document.getElementById('cmbmfyr').value = trim(document.getElementById('cmbmfyr').value)
	document.getElementById('cmbmodel').value = trim(document.getElementById('cmbmodel').value)
	document.getElementById('txtregno').value = trim(document.getElementById('txtregno').value)
	/*document.getElementById('txtdelnm').value = trim(document.getElementById('txtdelnm').value)*/
	document.getElementById('cmbpltp').value = trim(document.getElementById('cmbpltp').value)
	document.getElementById('txtinscom').value = trim(document.getElementById('txtinscom').value)
	document.getElementById('txtinsexpdt').value = trim(document.getElementById('txtinsexpdt').value)
	document.getElementById('txtwarantydt').value = trim(document.getElementById('txtwarantydt').value)	
	document.getElementById('serviceDate1').value = trim(document.getElementById('serviceDate1').value)
	document.getElementById('cmbsertype1').value = trim(document.getElementById('cmbsertype1').value)
	document.getElementById('cmbserstat1').value = trim(document.getElementById('cmbserstat1').value)
	document.getElementById('sersum1').value = trim(document.getElementById('sersum1').value)
	
	document.getElementById('serviceDate2').value = trim(document.getElementById('serviceDate2').value)
	document.getElementById('cmbsertype2').value = trim(document.getElementById('cmbsertype2').value)
	document.getElementById('cmbserstat2').value = trim(document.getElementById('cmbserstat2').value)
	document.getElementById('sersum2').value = trim(document.getElementById('sersum2').value)
	
	document.getElementById('serviceDate3').value = trim(document.getElementById('serviceDate3').value)
	document.getElementById('cmbsertype3').value = trim(document.getElementById('cmbsertype3').value)
	document.getElementById('cmbserstat3').value = trim(document.getElementById('cmbserstat3').value)
	document.getElementById('sersum3').value = trim(document.getElementById('sersum3').value)
	
	document.getElementById('serviceDate4').value = trim(document.getElementById('serviceDate4').value)
	document.getElementById('cmbsertype4').value = trim(document.getElementById('cmbsertype4').value)
	document.getElementById('cmbserstat4').value = trim(document.getElementById('cmbserstat4').value)
	document.getElementById('sersum4').value = trim(document.getElementById('sersum4').value)
	
	document.getElementById('serviceDate5').value = trim(document.getElementById('serviceDate5').value)
	document.getElementById('cmbsertype5').value = trim(document.getElementById('cmbsertype5').value)
	document.getElementById('cmbserstat5').value = trim(document.getElementById('cmbserstat5').value)
	document.getElementById('sersum5').value = trim(document.getElementById('sersum5').value)
	
	
	var objForm=document.frmaddetails;
	/*if(document.getElementById('cmbmfmn').value == "")
	{
		alert("Please select month");
		document.getElementById('cmbmfmn').focus();
		return false;
	}
	if(document.getElementById('cmbmfyr').value == "")
	{
		alert("Please select year");
		document.getElementById('cmbmfyr').focus();
		return false;
	}*/
	/*
	code added for validating month and year*/
	if(objForm.cmbmfmn.selectedIndex == 0){
		alert("Please select month & year of manufacture");
		objForm.cmbmfmn.focus();
		return false;
	}
	if(objForm.cmbmfyr.selectedIndex == 0){
		alert("Please select month & year of manufacture");
		objForm.cmbmfyr.focus();
		return false;
	}
	var d=new Date();
    var thisMonth = d.getMonth();
	var thisYear = d.getYear();	
	if (((objForm.cmbmfmn.selectedIndex - 1) > thisMonth ) && ((objForm.cmbmfyr.selectedIndex) == 1))
	{
	 alert("Please check the manufacturing month and year");
	 objForm.cmbmfmn.focus();
	 return false;
	}
	
	
	if(document.getElementById('cmbmodel').value == "")
	{
		alert("Please select model");
		document.getElementById('cmbmodel').focus();
		return false;
	}
	
	if(document.getElementById('cmbmodel').value == "")
	{
		alert("Please select model");
		document.getElementById('cmbmodel').focus();
		return false;
	}
	
	objForm.txtregno.value = trim(objForm.txtregno.value);

	if(objForm.txtregno.value == "")
	{
		alert("Please enter registration number");
		objForm.txtregno.focus();
		return false;
	}
	if(objForm.txtregno.value.length < 4)
	{
		alert("Registration number cannot be less than 4 characters");
		objForm.txtregno.focus();
		return false;
	}
	if (objForm.txtregno.value != "")
	{	
		var val = objForm.txtregno.value;
		val = val.substring(0,1);
		var objRegExp  =  /^[a-zA-Z- ]+$/; 
		var flag = objRegExp.test(val);

		 if(val != "" && !flag)
		 {
			 alert("Please enter a valid registration number");
			 objForm.txtregno.focus();
			 return false;
		 }
		 
	}	
	if (objForm.txtregno.value != "")
	{	
		var val = objForm.txtregno.value;
		var objRegExp  =  /^(?!^[a-zA-Z]*$)(?!^[0-9]*$)^([a-zA-Z0-9]((\s?\-?)|(-?\s?)|(\s?\-{1}\s?)))+$/;	
		var flag = objRegExp.test(val);

		 if(val != "" && !flag)
		 {
			 alert("Please enter a valid registration number");
			 objForm.txtregno.focus();
			 return false;
		 }
		 
	}
	objForm.txtregno.value = (objForm.txtregno.value).toUpperCase();
	
	/*if(document.getElementById('txtdelnm').value == "")
	{
		alert("Please enter dealer name");	
		document.getElementById('txtdelnm').focus();
		return false;
	}
	document.getElementById('txtdelnm').value = (document.getElementById('txtdelnm').value).ucfirst();*/
	
	if(document.getElementById('cmbpltp').value == "")
	{
		alert("Please select insurance policy type");	
		document.getElementById('cmbpltp').focus();
		return false;
	}
	if(document.getElementById('txtinscom').value != "")
	{
	document.getElementById('txtinscom').value = (document.getElementById('txtinscom').value).ucfirst();
	}
	
	
	var expirydate = new Date(objForm.txtinsexpdt.value);
	if(document.getElementById('txtinsexpdt').value == "")
	{
		alert("Please select insurance expiry date");	
		document.getElementById('txtinsexpdt').focus();
		return false;
	}
	/*code added for validating expiry date*/
	var manumonth = objForm.cmbmfmn.value;
	if(manumonth=="Jan"){
		manumonth=1;
		}
		if(manumonth=="Feb"){
		manumonth=2;
		}
		if(manumonth=="Mar"){
		manumonth=3;
		}
		if(manumonth=="Apr"){
		manumonth=4;
		}
		if(manumonth=="May"){
		manumonth=5;
		}
		if(manumonth=="Jun"){
		manumonth=6;
		}
		if(manumonth=="Jul"){
		manumonth=7;
		}
		if(manumonth=="Aug"){
		manumonth=8;
		}
		if(manumonth=="Sep"){
		manumonth=9;
		}
		if(manumonth=="Oct"){
		manumonth=10;
		}
		if(manumonth=="Nov"){
		manumonth=11;
		}
		if(manumonth=="Dec"){
		manumonth=12;
		}
	//alert(manumonth);
	var manuyear = objForm.cmbmfyr.value;
	var firstdate = expirydate.getDate();
	var firstmonth = expirydate.getMonth();
	var firstyear = expirydate.getFullYear();
	firstmonth=parseInt(firstmonth) +1 ;
	if (manuyear > firstyear)
	{     alert("'Insurance Expiry' year should be greater than or equal to year of manufacture");				
		objForm.txtinsexpdt.focus();
		return false;
	}
	else if ( manuyear == firstyear)
		{	
		
	    if( manumonth > firstmonth )
	    {alert("'Insurance Expiry' month should be greater than or equal to month of manufacture");
	    objForm.txtinsexpdt.focus();
		return false;
		}
	    
					}

	if(document.getElementById("cmbwrtype").value !="" && document.getElementById("txtwarantydt").value ==""){
		alert("Please select warranty due date");
		document.getElementById("addCal").focus();
		return false;
	}

	/*code added for validating expiry date*/
	var warrantydate = new Date(objForm.txtwarantydt.value);
	var manumonth = objForm.cmbmfmn.value;
	if(manumonth=="Jan"){
		manumonth=1;
		}
		if(manumonth=="Feb"){
		manumonth=2;
		}
		if(manumonth=="Mar"){
		manumonth=3;
		}
		if(manumonth=="Apr"){
		manumonth=4;
		}
		if(manumonth=="May"){
		manumonth=5;
		}
		if(manumonth=="Jun"){
		manumonth=6;
		}
		if(manumonth=="Jul"){
		manumonth=7;
		}
		if(manumonth=="Aug"){
		manumonth=8;
		}
		if(manumonth=="Sep"){
		manumonth=9;
		}
		if(manumonth=="Oct"){
		manumonth=10;
		}
		if(manumonth=="Nov"){
		manumonth=11;
		}
		if(manumonth=="Dec"){
		manumonth=12;
		}
	//alert(manumonth);
	var manuyear = objForm.cmbmfyr.value;
	var firstdate = warrantydate.getDate();
	var firstmonth = warrantydate.getMonth();
	var firstyear = warrantydate.getFullYear();
	firstmonth=parseInt(firstmonth) +1 ;
	if (manuyear > firstyear)
	{     alert("'Warranty Due' year should be greater than or equal to year of manufacture");				
		objForm.txtwarantydt.focus();
		return false;
	}
	else if ( manuyear == firstyear)
		{	
		
	    if( manumonth > firstmonth )
	    {alert("'Warranty Due' month should be greater than or equal to month of manufacture");
	    objForm.txtwarantydt.focus();
		return false;
		}
	    
					}

	if(document.getElementById("txtwarantydt").value !="" && document.getElementById("cmbwrtype").value ==""){
		alert("Please select warranty type");
		document.getElementById("cmbwrtype").focus();
		return false;
	}	
		
	for(var i=1;i<=5;i++)
	{
	//	alert(i)
								var serDat = document.getElementById('serviceDate'+i).value;
								var serDtl = document.getElementById('cmbsertype'+i).value;
								var serSts = document.getElementById('cmbserstat'+i).value;
								
								if((serDat !="") || (serDtl !="") || (serSts !="")){
										var tempVar='serviceDate'+i;
									if(document.getElementById(tempVar).value == "")
									{
										alert("Please select service date");	
										document.getElementById(tempVar).focus();
										return false;
									}
									else{
var expirydate1 = new Date(document.getElementById(tempVar).value);
var firstdate = expirydate1.getDate();
	var firstmonth1 = expirydate1.getMonth();
	var firstyear1 = expirydate1.getFullYear();
	firstmonth1=parseInt(firstmonth1) +1 ;
if (manuyear > firstyear1)
	{     alert("'Service Date' should be greater than or equal to year of manufacture");				
		document.getElementById(tempVar).focus();
		return false;
	}
	else if ( manuyear == firstyear1)
		{	
		
	    if( manumonth > firstmonth1 )
	    	{
alert("'Service Date' should be greater than or equal to month of manufacture");
	    document.getElementById(tempVar).focus();
		return false;
		}													}
																}
									tempVar='cmbsertype'+i;
									if(document.getElementById(tempVar).value == "")
									{
										alert("Please select service type");	
										document.getElementById(tempVar).focus();
										return false;
									}
									tempVar='cmbserstat'+i;
									if(document.getElementById(tempVar).value == "")
									{
										alert("Please select status");	
										document.getElementById(tempVar).focus();
										return false;
									}
								}
	}//for loop
		return true;	

}
function checkWdate(){
	if((document.getElementById("cmbwrtype").options[document.getElementById("cmbwrtype").selectedIndex]).value ==""){
		document.getElementById("txtwarantydt").value = "";
	}
}
/*Edit details*/
function chkeditdetails(){
	document.getElementById('cmbmfmn').value = trim(document.getElementById('cmbmfmn').value)
	document.getElementById('cmbmfyr').value = trim(document.getElementById('cmbmfyr').value)
	document.getElementById('cmbmodel').value = trim(document.getElementById('cmbmodel').value)
	document.getElementById('txtregno').value = trim(document.getElementById('txtregno').value)
	/*document.getElementById('txtdelnm').value = trim(document.getElementById('txtdelnm').value)*/
	document.getElementById('cmbpltp').value = trim(document.getElementById('cmbpltp').value)
	/*document.getElementById('txtinscom').value = trim(document.getElementById('txtinscom').value)*/
	document.getElementById('txtinsexpdt').value = trim(document.getElementById('txtinsexpdt').value)
	document.getElementById('serviceDate1').value = trim(document.getElementById('serviceDate1').value)
	document.getElementById('cmbsertype1').value = trim(document.getElementById('cmbsertype1').value)
	document.getElementById('cmbserstat1').value = trim(document.getElementById('cmbserstat1').value)
	document.getElementById('sersum1').value = trim(document.getElementById('sersum1').value)
	
	document.getElementById('serviceDate2').value = trim(document.getElementById('serviceDate2').value)
	document.getElementById('cmbsertype2').value = trim(document.getElementById('cmbsertype2').value)
	document.getElementById('cmbserstat2').value = trim(document.getElementById('cmbserstat2').value)
	document.getElementById('sersum2').value = trim(document.getElementById('sersum2').value)
	
	document.getElementById('serviceDate3').value = trim(document.getElementById('serviceDate3').value)
	document.getElementById('cmbsertype3').value = trim(document.getElementById('cmbsertype3').value)
	document.getElementById('cmbserstat3').value = trim(document.getElementById('cmbserstat3').value)
	document.getElementById('sersum3').value = trim(document.getElementById('sersum3').value)
	
	document.getElementById('serviceDate4').value = trim(document.getElementById('serviceDate4').value)
	document.getElementById('cmbsertype4').value = trim(document.getElementById('cmbsertype4').value)
	document.getElementById('cmbserstat4').value = trim(document.getElementById('cmbserstat4').value)
	document.getElementById('sersum4').value = trim(document.getElementById('sersum4').value)
	
	document.getElementById('serviceDate5').value = trim(document.getElementById('serviceDate5').value)
	document.getElementById('cmbsertype5').value = trim(document.getElementById('cmbsertype5').value)
	document.getElementById('cmbserstat5').value = trim(document.getElementById('cmbserstat5').value)
	document.getElementById('sersum5').value = trim(document.getElementById('sersum5').value)
		
/*	if(document.getElementById('cmbmfmn').value == "")
	{
		alert("Please select month");
		document.getElementById('cmbmfmn').focus();
		return false;
	}
	if(document.getElementById('cmbmfyr').value == "")
	{
		alert("Please select year");
		document.getElementById('cmbmfyr').focus();
		return false;
	}*/
	var objForm=document.frmeditdetails;
	if(objForm.cmbmfmn.selectedIndex == 0){
		alert("Please select month & year of manufacture");
		objForm.cmbmfmn.focus();
		return false;
	}
	if(objForm.cmbmfyr.selectedIndex == 0){
		alert("Please select month & year of manufacture");
		objForm.cmbmfyr.focus();
		return false;
	}
	var d=new Date();
    var thisMonth = d.getMonth();
	var thisYear = d.getYear();	
	if (((objForm.cmbmfmn.selectedIndex - 1) > thisMonth ) && ((objForm.cmbmfyr.selectedIndex) == 1))
	{
	 alert("Please check the manufacturing month and year");
	 objForm.cmbmfmn.focus();
	 return false;
	}
	
	if(document.getElementById('cmbmodel').value == "")
	{
		alert("Please select model");
		document.getElementById('cmbmodel').focus();
		return false;
	}
	
	if(document.getElementById('cmbmodel').value == "")
	{
		alert("Please select model");
		document.getElementById('cmbmodel').focus();
		return false;
	}
	
	objForm.txtregno.value = trim(objForm.txtregno.value);

	if(objForm.txtregno.value == "")
	{
		alert("Please enter registration number");
		objForm.txtregno.focus();
		return false;
	}
	if(objForm.txtregno.value.length < 4)
	{
		alert("Registration number cannot be less than 4 characters");
		objForm.txtregno.focus();
		return false;
	}
	if (objForm.txtregno.value != "")
	{	
		var val = objForm.txtregno.value;
		val = val.substring(0,1);
		var objRegExp  =  /^[a-zA-Z- ]+$/; 
		var flag = objRegExp.test(val);

		 if(val != "" && !flag)
		 {
			 alert("Please enter a valid registration number");
			 objForm.txtregno.focus();
			 return false;
		 }
		 
	}	
	if (objForm.txtregno.value != "")
	{	
		var val = objForm.txtregno.value;
		var objRegExp  =  /^(?!^[a-zA-Z]*$)(?!^[0-9]*$)^([a-zA-Z0-9]((\s?\-?)|(-?\s?)|(\s?\-{1}\s?)))+$/;	
		var flag = objRegExp.test(val);

		 if(val != "" && !flag)
		 {
			 alert("Please enter a valid registration number");
			 objForm.txtregno.focus();
			 return false;
		 }
		 
	}
	objForm.txtregno.value = (objForm.txtregno.value).toUpperCase();
	
	/*if(document.getElementById('txtdelnm').value == "")
	{
		alert("Please enter dealer name");	
		document.getElementById('txtdelnm').focus();
		return false;
	}
	document.getElementById('txtdelnm').value = (document.getElementById('txtdelnm').value).ucfirst();*/
	
	if(document.getElementById('cmbpltp').value == "")
	{
		alert("Please select insurance policy type");	
		document.getElementById('cmbpltp').focus();
		return false;
	}
	/*if(document.getElementById('txtinscom').value == "")
	{
		alert("Please enter insurance company");	
		document.getElementById('txtinscom').focus();
		return false;
	}
	document.getElementById('txtinscom').value = (document.getElementById('txtinscom').value).ucfirst();*/
	
	var expirydate = new Date(objForm.txtinsexpdt.value);
	if(document.getElementById('txtinsexpdt').value == "")
	{
		alert("Please select insurance expiry date");	
		document.getElementById('txtinsexpdt').focus();
		return false;
	}
	var manumonth = objForm.cmbmfmn.value;
	if(manumonth=="Jan"){
		manumonth=1;
		}
		if(manumonth=="Feb"){
		manumonth=2;
		}
		if(manumonth=="Mar"){
		manumonth=3;
		}
		if(manumonth=="Apr"){
		manumonth=4;
		}
		if(manumonth=="May"){
		manumonth=5;
		}
		if(manumonth=="Jun"){
		manumonth=6;
		}
		if(manumonth=="Jul"){
		manumonth=7;
		}
		if(manumonth=="Aug"){
		manumonth=8;
		}
		if(manumonth=="Sep"){
		manumonth=9;
		}
		if(manumonth=="Oct"){
		manumonth=10;
		}
		if(manumonth=="Nov"){
		manumonth=11;
		}
		if(manumonth=="Dec"){
		manumonth=12;
		}
	//alert(manumonth);
	var manuyear = objForm.cmbmfyr.value;
	var firstdate = expirydate.getDate();
	var firstmonth = expirydate.getMonth();
	var firstyear = expirydate.getFullYear();
	firstmonth=parseInt(firstmonth) +1 ;
	if (manuyear > firstyear)
	{     alert("'Insurance Expiry' year should be greater than or equal to year of manufacture");				
		objForm.txtinsexpdt.focus();
		return false;
	}
	else if ( manuyear == firstyear)
		{	
		
	    if( manumonth > firstmonth )
	    {alert("'Insurance Expiry' month should be greater than or equal to month of manufacture");
	    objForm.txtinsexpdt.focus();
		return false;
		}
	    
					}

	if(document.getElementById("cmbwrtype").value !="" && document.getElementById("txtwarantydt").value ==""){
		alert("Please select warranty due date");
		document.getElementById("addCal").focus();
		return false;
	}

	/*code added for validating expiry date*/
	var warrantydate = new Date(objForm.txtwarantydt.value);
	var manumonth = objForm.cmbmfmn.value;
	if(manumonth=="Jan"){
		manumonth=1;
		}
		if(manumonth=="Feb"){
		manumonth=2;
		}
		if(manumonth=="Mar"){
		manumonth=3;
		}
		if(manumonth=="Apr"){
		manumonth=4;
		}
		if(manumonth=="May"){
		manumonth=5;
		}
		if(manumonth=="Jun"){
		manumonth=6;
		}
		if(manumonth=="Jul"){
		manumonth=7;
		}
		if(manumonth=="Aug"){
		manumonth=8;
		}
		if(manumonth=="Sep"){
		manumonth=9;
		}
		if(manumonth=="Oct"){
		manumonth=10;
		}
		if(manumonth=="Nov"){
		manumonth=11;
		}
		if(manumonth=="Dec"){
		manumonth=12;
		}
	//alert(manumonth);
	var manuyear = objForm.cmbmfyr.value;
	var firstdate = warrantydate.getDate();
	var firstmonth = warrantydate.getMonth();
	var firstyear = warrantydate.getFullYear();
	firstmonth=parseInt(firstmonth) +1 ;
	if (manuyear > firstyear)
	{     alert("'Warranty Due' year should be greater than or equal to year of manufacture");				
		objForm.txtwarantydt.focus();
		return false;
	}
	else if ( manuyear == firstyear)
		{	
		
	    if( manumonth > firstmonth )
	    {alert("'Warranty Due' month should be greater than or equal to month of manufacture");
	    objForm.txtwarantydt.focus();
		return false;
		}
	    
					}	
	if(document.getElementById("txtwarantydt").value !="" && document.getElementById("cmbwrtype").value ==""){
		alert("Please select warranty type");
		document.getElementById("cmbwrtype").focus();
		return false;
	}	

	for(var i=1;i<=5;i++)
	{
	//	alert(i)
								var serDat = document.getElementById('serviceDate'+i).value;
								var serDtl = document.getElementById('cmbsertype'+i).value;
								var serSts = document.getElementById('cmbserstat'+i).value;
								
								if((serDat !="") || (serDtl !="") || (serSts !="")){
										var tempVar='serviceDate'+i;
															if(document.getElementById(tempVar).value == "")
															{
																alert("Please select service date");	
																document.getElementById(tempVar).focus();
																return false;
															}
															else{
var expirydate1 = new Date(document.getElementById(tempVar).value);
		
var firstdate = expirydate1.getDate();
	var firstmonth1 = expirydate1.getMonth();
	var firstyear1 = expirydate1.getFullYear();
	firstmonth1=parseInt(firstmonth1) +1 ;
if (manuyear > firstyear1)
	{     alert("'Service Date' should be greater than or equal to year of manufacture");				
		document.getElementById(tempVar).focus();
		return false;
	}
	else if ( manuyear == firstyear1)
		{	
		
	    if( manumonth > firstmonth1 )
	    	{
alert("'Service Date' should be greater than or equal to month of manufacture");
	    document.getElementById(tempVar).focus();
		return false;
		}													}
																}
															tempVar='cmbsertype'+i;
															if(document.getElementById(tempVar).value == "")
															{
																alert("Please select service type");	
																document.getElementById(tempVar).focus();
																return false;
															}
															tempVar='cmbserstat'+i;
															if(document.getElementById(tempVar).value == "")
															{
																alert("Please select status");	
																document.getElementById(tempVar).focus();
																return false;
															}
								}
	}//for loop

		return true;	


}
/*New Car Special*/
function chkdismodel(){
	if(document.getElementById('variant').value == "")
	{
		alert("Please select vairant")	
		document.getElementById('variant').focus();
		return false;
	}
	else
	{
		return true;
	}
}
// JavaScript Document
function checkleadform(formName){
	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('txtadd1').value = trim(document.getElementById('txtadd1').value);
	document.getElementById('txtadd2').value = trim(document.getElementById('txtadd2').value);
	document.getElementById('txtcity').value = trim(document.getElementById('txtcity').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();
	
	if(document.getElementById('txtemail').value==""){ 
		alert("Please enter e-mail id");
		document.getElementById('txtemail').focus();
		return false;
	}
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();

	if(document.getElementById('txtadd1').value != ""){
		document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();	
	}
	if(document.getElementById('txtadd2').value != ""){
		document.getElementById('txtadd2').value = (document.getElementById('txtadd2').value).ucfirst();	
	}
	
	if(!isName(document.getElementById('txtcity'))){ 
		alert("Please select a city");
		document.getElementById('txtcity').focus();
		return false;
	}
	document.getElementById('txtcity').value = (document.getElementById('txtcity').value).ucfirst();
	
	if(document.getElementById('txtpcode').value != "" && document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);

	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;

	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}
	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}

	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}	

	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	
	/* if(document.getElementById('cmbMethod').value == "" )
	{
		alert("Please select best method to contact");
		document.getElementById('cmbMethod').focus();
		return false;
	}
	if(document.getElementById('cmbMethod').value == "Phone" && document.getElementById('cmbTimeC').value == "" )
	{
		alert("Please select best time to contact");
		document.getElementById('cmbTimeC').focus();
		return false;
	} */
/*	if(document.getElementById("termscheck").checked != "checked") {
		alert("");
		return false;
	}*/
	if(formName=='accessoriesForm'){
		document.accessoriesForm.action="/newcars/dealSummary.htm";	
		//document.accessoriesForm.submit();
	}
	if(formName=='loanForm'){
		document.loanForm.action="/newcars/dealSummary.htm";	
		//document.loanForm.submit();
	}
	
	//return true;	
}


function checkcontactus(){

	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('txtadd1').value = trim(document.getElementById('txtadd1').value);
	document.getElementById('txtadd2').value = trim(document.getElementById('txtadd2').value);
	document.getElementById('txtcity').value = trim(document.getElementById('txtcity').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();
	
	if(document.getElementById('txtemail').value==""){ 
		alert("Please enter e-mail id");
		document.getElementById('txtemail').focus();
		return false;
	}
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();

	if(document.getElementById('txtadd1').value != ""){
		document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();	
	}
	
	if(document.getElementById('txtadd2').value != ""){
		document.getElementById('txtadd2').value = (document.getElementById('txtadd2').value).ucfirst();	
	}
	if(document.getElementById('txtcity').value==""){ 
		alert("Please select a city");
		document.getElementById('txtcity').focus();
		return false;
	}
	document.getElementById('txtcity').value = (document.getElementById('txtcity').value).ucfirst();
	
	if(document.getElementById('txtpcode').value != "" && document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);

	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;

	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}
	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}

	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}	

	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	
	/* if(document.getElementById('cmbMethod').value == "" )
	{
		alert("Please select best method to contact");
		document.getElementById('cmbMethod').focus();
		return false;
	}
	if(document.getElementById('cmbMethod').value == "Phone" && document.getElementById('cmbTimeC').value == "" )
	{
		alert("Please select best time to contact");
		document.getElementById('cmbTimeC').focus();
		return false;
	}

	return true; */	
}


function checkreqpricelist(){

	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('city').value = trim(document.getElementById('city').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();
	
	if(document.getElementById('txtemail').value==""){ 
		alert("Please enter e-mail id");
		document.getElementById('txtemail').focus();
		return false;
	}
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();

	if(document.getElementById('city').value==""){ 
		alert("Please select a city");
		document.getElementById('city').focus();
		return false;
	}
	
	
	if(document.getElementById('txtpcode').value != "" && document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);

	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;

	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}
	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}

	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}	

	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	
	return true;	
}



function checktestdrive(){

	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('txtadd1').value = trim(document.getElementById('txtadd1').value);
	document.getElementById('txtadd2').value = trim(document.getElementById('txtadd2').value);
	document.getElementById('txtcity').value = trim(document.getElementById('txtcity').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	if(document.getElementById('cmbmodel').value == "")
	{
		alert("Please select model");
		document.getElementById('cmbmodel').focus();
		return false;
	}
	if(document.getElementById('dateOfReg').value == "")
	{
		alert("Please select Test drive date");
		document.getElementById('dateOfReg').focus();
		return false;
	}
	if(document.getElementById('cmbTimeT').value == "")
	{
		alert("Please select time slot");
		document.getElementById('cmbTimeT').focus();
		return false;
	}
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();
	
	if(document.getElementById('txtemail').value==""){ 
		alert("Please enter e-mail id");
		document.getElementById('txtemail').focus();
		return false;
	}
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();

	if(document.getElementById('txtadd1').value != ""){
		document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();	
	}
	
	if(!isName(document.getElementById('txtcity'))){ 
		alert("Please select a city");
		document.getElementById('txtcity').focus();
		return false;
	}
	document.getElementById('txtcity').value = (document.getElementById('txtcity').value).ucfirst();
	
	if(document.getElementById('txtadd1').value != ""){
		document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();	
	}

	if(document.getElementById('txtadd2').value != ""){
		document.getElementById('txtadd2').value = (document.getElementById('txtadd2').value).ucfirst();
	}
	
	if(document.getElementById('txtpcode').value != "" && document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);

	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;

	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}
	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}

	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}	

	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	
/* 	if(document.getElementById('cmbMethod').value == "" )
	{
		alert("Please select best method to contact");
		document.getElementById('cmbMethod').focus();
		return false;
	}
	if(document.getElementById('cmbMethod').value == "Phone" && document.getElementById('cmbTimeC').value == "" )
	{
		alert("Please select best time to contact");
		document.getElementById('cmbTimeC').focus();
		return false;
	}
	return true; */	
}

// Insurance page
function checkInsurance(){
	var objForm=document.insuranceForm;
	var curDate=new Date();
					
	curYear=curDate.getFullYear();
	curMonth=curDate.getMonth()+1;
	
	oldYear=curYear-5;
	oldMonth=curMonth-1;
   
	  if(document.getElementById('lCarModel').value == ""){ 
		alert("Please select vehicle model ");
		document.getElementById('lCarModel').focus();
		return false;
	}
	
	objForm.lRegistration.value = trim(objForm.lRegistration.value);

	if(objForm.lRegistration.value == "")
	{
		alert("Please enter registration number");
		objForm.lRegistration.focus();
		return false;
	}
	if(objForm.lRegistration.value.length < 4)
	{
		alert("Registration number cannot be less than 4 characters");
		objForm.lRegistration.focus();
		return false;
	}
	if (objForm.lRegistration.value != "")
	{	
		var val = objForm.lRegistration.value;
		val = val.substring(0,1);
		var objRegExp  =  /^[a-zA-Z- ]+$/; 
		var flag = objRegExp.test(val);

		 if(val != "" && !flag)
		 {
			 alert("Please enter a valid registration number");
			 objForm.lRegistration.focus();
			 return false;
		 }
		 
	}	
	if (objForm.lRegistration.value != "")
	{	
		var val = objForm.lRegistration.value;
		var objRegExp  =  /^(?!^[a-zA-Z]*$)(?!^[0-9]*$)^([a-zA-Z0-9]((\s?\-?)|(-?\s?)|(\s?\-{1}\s?)))+$/;	
		var flag = objRegExp.test(val);

		 if(val != "" && !flag)
		 {
			 alert("Please enter a valid registration number");
			 objForm.lRegistration.focus();
			 return false;
		 }
		 
	}
	objForm.lRegistration.value = (objForm.lRegistration.value).toUpperCase();
	
	if(objForm.lManufactureMonth.selectedIndex == 0){
		alert("Please select month & year of manufacture");
		objForm.lManufactureMonth.focus();
		return false;
	}
	if(objForm.lManufactureYear.selectedIndex == 0){
		alert("Please select month & year of manufacture");
		objForm.lManufactureYear.focus();
		return false;
	}
	var d=new Date();
    var thisMonth = d.getMonth();
	var thisYear = d.getYear();	
	if (((objForm.lManufactureMonth.selectedIndex - 1) > thisMonth ) && ((objForm.lManufactureYear.selectedIndex) == 1))
	{
	 alert("Please check the manufacturing month and year");
	 objForm.lManufactureMonth.focus();
	 return false;
	}
	if(document.getElementById('lVehicleType').value == ""){ 
		alert("Please select type of vehicle ownership");
		document.getElementById('lVehicleType').focus();
		return false;
	}
	if(document.getElementById("new1").checked==false)
	{

		document.getElementById('lCompany').value=trim(document.getElementById('lCompany').value);
		
		if(document.getElementById('lCompany').value == ""){ 
		alert("Please enter the insurance company ");
		document.getElementById('lCompany').focus();
		return false;
		}
		document.getElementById('lCompany').value = (document.getElementById('lCompany').value).ucfirst();
	
		if(document.getElementById('lInsuranceType').value == ""){ 
		alert("Please select insurance type ");
		document.getElementById('lInsuranceType').focus();
		return false;
		}
		if(objForm.lInsuranceToDay.value == ""){
		alert("Please select insurance expiry date");
		objForm.lInsuranceToDay.focus();
		return false;
		}
//#########################################################################################################
	var expirydate = new Date(objForm.lInsuranceToDay.value);
	var manumonth = objForm.lManufactureMonth.value;
	if(manumonth=="Jan"){
		manumonth=1;
		}
		if(manumonth=="Feb"){
		manumonth=2;
		}
		if(manumonth=="Mar"){
		manumonth=3;
		}
		if(manumonth=="Apr"){
		manumonth=4;
		}
		if(manumonth=="May"){
		manumonth=5;
		}
		if(manumonth=="Jun"){
		manumonth=6;
		}
		if(manumonth=="Jul"){
		manumonth=7;
		}
		if(manumonth=="Aug"){
		manumonth=8;
		}
		if(manumonth=="Sep"){
		manumonth=9;
		}
		if(manumonth=="Oct"){
		manumonth=10;
		}
		if(manumonth=="Nov"){
		manumonth=11;
		}
		if(manumonth=="Dec"){
		manumonth=12;
		}
	//alert(manumonth);
	var manuyear = objForm.lManufactureYear.value;
	var firstdate = expirydate.getDate();
	var firstmonth = expirydate.getMonth();
	var firstyear = expirydate.getFullYear();
	firstmonth=parseInt(firstmonth) +1 ;
	if (manuyear > firstyear)
	{     alert("'Insurance Expiry' year should be greater than or equal to year of manufacture");				
		objForm.lInsuranceToDay.focus();
		return false;
	}
	else if ( manuyear == firstyear)
		{	
		
	    if( manumonth > firstmonth )
	    {alert("'Insurance Expiry' month should be greater than or equal to month of manufacture");
	    objForm.lInsuranceToDay.focus();
		return false;
		}
	}

//#########################################################################################################

	}

	if(document.getElementById('lVehicleUnder').value == ""){ 
		alert("Please select vehicle requirement ");
		document.getElementById('lVehicleUnder').focus();
		return false;
	}
	if(document.getElementById("new1").checked==false)
	{
		document.getElementById('lPremium').value=trim(document.getElementById('lPremium').value);
		
		if(document.getElementById('lPremium').value == "")
		{
			alert("Please enter current premium");
			document.getElementById('lPremium').focus();
			return false;
		}
		if(document.getElementById('lPremium').value ==0)
		{
			alert("Current premium cannot be zero");
			document.getElementById('lPremium').value="";
			document.getElementById('lPremium').focus();
			return false;
		}
		else
		{
		document.getElementById('lPremium').value = parseInt(document.getElementById('lPremium').value, 10);
		}
		if(document.getElementById('lInsuredAmount').value == ""){ 
			alert("Please enter insured amount ");
			document.getElementById('lInsuredAmount').focus();
			return false;
		}
		if(document.getElementById('lInsuredAmount').value == 0){ 
			alert("Insured amount cannot be zero ");
			document.getElementById('lInsuredAmount').value="";
			document.getElementById('lInsuredAmount').focus();
			return false;
		}
		
		else
		{
		document.getElementById('lInsuredAmount').value = parseInt(document.getElementById('lInsuredAmount').value, 10);	
		}
		
	}    
	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);	
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('txtadd1').value = trim(document.getElementById('txtadd1').value);
	document.getElementById('txtadd2').value = trim(document.getElementById('txtadd2').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();
	
	if(document.getElementById('txtemail').value == ""){
		alert("Please enter email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();
	
	if(document.getElementById('txtadd1').value != ""){
		document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();	
	}

	if(document.getElementById('txtadd2').value != ""){
		document.getElementById('txtadd2').value = (document.getElementById('txtadd2').value).ucfirst();
	}
	
	document.getElementById('txtcity').value = trim(document.getElementById('txtcity').value);
	if(!isName(document.getElementById('txtcity'))){ 
		alert("Please select a city");
		document.getElementById('txtcity').focus();
		return false;
	}
	document.getElementById('txtcity').value = (document.getElementById('txtcity').value).ucfirst();
	
	if(document.getElementById('txtpcode').value != "" && document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);

	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;

	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}
	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}
	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}

	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");	
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	
	else
	{
		return true;	
	}
	
}	


function getTradeInvalue(tradeinValue)
{
	if(tradeinValue=="YES"){
		document.getElementById("mycaris").style.display = "block";
		document.getElementById("carTypemake").checked = "checked";
		showelements();
	}else{
		document.getElementById("mycaris").style.display = "none";
		hideelements();
	}	
}	

function showformelements(myCarvalue)
{
	if(myCarvalue=="Non Maruti"){
		document.getElementById("tradeInValue").value = "To be evaluated";
		hideelements();
	}
	else{
		document.getElementById("tradeInValue").value = "";	
		showelements();	
		if(document.getElementById("tradeInModelsSize")){
			var tradeInmodelsSize = document.getElementById("tradeInModelsSize").value
			if(tradeInmodelsSize==0){
				hideelements();
			}
		}
	}
}

function showelements(){
document.getElementById('selectedTradeInVehicleType').value="Maruti";	
document.getElementById("tradeInModel").disabled = false;
document.getElementById("tradeInVariant").disabled = false;
document.getElementById("tradeInYear").disabled = false;
document.getElementById("tradeInEmission").disabled = false;
//document.getElementById("tradeInValue").disabled = false;
}

function hideelements(){
	document.getElementById('selectedTradeInVehicleType').value="Non Maruti";
	if(document.getElementById('carTypemake').checked){
		document.getElementById('selectedTradeInVehicleType').value="Maruti";
	}
	document.getElementById("tradeInModel").value="";
	//document.getElementById("tradeInVariant").value="";
	document.getElementById("tradeInVariant").options.length = 1;
	document.getElementById("tradeInVariant").options[0].text = "Select a Variant"
	document.getElementById("tradeInVariant").selectedIndex = 0;
	//document.getElementById("tradeInYear").value="";
	document.getElementById("tradeInYear").options.length = 1;
	document.getElementById("tradeInYear").options[0].text = "Select a Year"
	document.getElementById("tradeInYear").selectedIndex = 0;
	//document.getElementById("tradeInEmission").value="";
	document.getElementById("tradeInEmission").options.length = 1;
	document.getElementById("tradeInEmission").options[0].text = "Select a Emission"
	document.getElementById("tradeInEmission").selectedIndex = 0;
	//document.getElementById("tradeInValue").value="";
	document.getElementById("selectedTradeinModel").value="";
	document.getElementById("selectedTradeinvariant").value="";
	document.getElementById("selectedTradeinYear").value="";
	document.getElementById("selectedTradeinEmission").value="";
	document.getElementById("selectedTradeInEstimatedValue").value="";

	document.getElementById("tradeInModel").disabled = true;
	document.getElementById("tradeInVariant").disabled = true;
	document.getElementById("tradeInYear").disabled = true;
	document.getElementById("tradeInEmission").disabled = true;
	//document.getElementById("tradeInValue").disabled = true;

}
function MethodSelection()
{
	if(document.getElementById('cmbMethod').value == "phone" || document.getElementById('cmbMethod').value == "Phone"  )
	{
	document.getElementById('mtdBlock').style.display='block';	
	}
	else{
	document.getElementById('mtdBlock').style.display='none';	
	}
}

function chkSerForm(){
	if(document.getElementById('servicetype').value == ""){ 
		alert("Please select the type of service");
		document.getElementById('servicetype').focus();
		return false;
	}
  if(document.getElementById('dateOfSer').value == ""){ 
		alert("Please choose the service date");
		document.getElementById('dateOfSer').focus();
		return false;
	}
	if(document.getElementById('lCarMonth').value == ""){ 
		alert("Please select month of registration ");
		document.getElementById('lCarMonth').focus();
		return false;
	}	 
		if(document.getElementById('lCarYear').value == ""){ 
		alert("Please select year of registration ");
		document.getElementById('lCarYear').focus();
		return false;
	}	 
	var d=new Date();
    var thisMonth = d.getMonth();
	var thisYear = d.getYear();	
	if (((document.frmserv.lCarMonth.selectedIndex - 1) > thisMonth ) && ((document.frmserv.lCarYear.selectedIndex) == 1))
	{
	 alert("Please check the registration month and year");
	 document.frmserv.lCarMonth.focus();
	 return false;
	}

	  if(document.getElementById('lCarModel').value == ""){ 
		alert("Please select a model ");
		document.getElementById('lCarModel').focus();
		return false;
	}	
	var objForm=document.frmserv;
	objForm.lRegistration.value = trim(objForm.lRegistration.value);

	if(objForm.lRegistration.value == "")
	{
		alert("Please enter registration number");
		objForm.lRegistration.focus();
		return false;
	}
	if(objForm.lRegistration.value.length < 4)
	{
		alert("Registration number cannot be less than 4 characters");
		objForm.lRegistration.focus();
		return false;
	}
	if (objForm.lRegistration.value != "")
	{	
		var val = objForm.lRegistration.value;
		val = val.substring(0,1);
		var objRegExp  =  /^[a-zA-Z- ]+$/; 
		var flag = objRegExp.test(val);

		 if(val != "" && !flag)
		 {
			 alert("Please enter a valid registration number");
			 objForm.lRegistration.focus();
			 return false;
		 }
		 
	}	
	if (objForm.lRegistration.value != "")
	{	
		var val = objForm.lRegistration.value;
		var objRegExp  =  /^(?!^[a-zA-Z]*$)(?!^[0-9]*$)^([a-zA-Z0-9]((\s?\-?)|(-?\s?)|(\s?\-{1}\s?)))+$/;	
		var flag = objRegExp.test(val);

		 if(val != "" && !flag)
		 {
			 alert("Please enter a valid registration number");
			 objForm.lRegistration.focus();
			 return false;
		 }
		 
	}
	objForm.lRegistration.value = (objForm.lRegistration.value).toUpperCase();

	if(document.getElementById('dateOfSer').value == ""){ 
		alert("Please choose the service date");
		document.getElementById('dateOfSer').focus();
		return false;
	}
	
	
	document.getElementById('lkilometers').value = trim(document.getElementById('lkilometers').value);	
	if(document.getElementById('lkilometers').value == "" ){ 
		alert("Please enter Kilometers done");
		document.getElementById('lkilometers').focus();
		return false;
	}
	
	if(document.getElementById('lkilometers').value == 0){ 
		alert("Please check the Kilometers done.");
		document.getElementById('lkilometers').focus();
		return false;
	}
	document.getElementById('lkilometers').value = parseInt(document.getElementById('lkilometers').value,10);	

	    
	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);	
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('txtadd1').value = trim(document.getElementById('txtadd1').value);
	document.getElementById('txtadd2').value = trim(document.getElementById('txtadd2').value);
	document.getElementById('city').value = trim(document.getElementById('city').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();
	
	if(document.getElementById('txtemail').value == ""){
		alert("Please enter email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();
	
	if(document.getElementById('txtadd1').value != ""){
		document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();	
	}

	if(document.getElementById('txtadd2').value != ""){
		document.getElementById('txtadd2').value = (document.getElementById('txtadd2').value).ucfirst();	
	}
	if(document.getElementById('city').value == ""){
		alert("Please select a city");
		document.getElementById('city').focus();
		return false;
	}
	document.getElementById('city').value = (document.getElementById('city').value).ucfirst();
	

	if(document.getElementById('txtpcode').value != "" && document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);
	/*if(!isNotEmpty(document.getElementById('pHomePhone1'))){
		if(!isNotEmpty(document.getElementById('pOfficePhone1'))){
			if(!isNotEmpty(document.getElementById('pMobileNo'))){
				alert("Please enter mobile number");
				document.getElementById('pMobileNo').focus();
				return false;
			}
		}
	else if(!isNotEmpty(document.getElementById('pOfficePhone2'))){
		
		alert("Please enter office phone");
		document.getElementById('pOfficePhone2').focus();
		return false;
			} 
		}
	else if(!isNotEmpty(document.getElementById('pHomePhone2'))){
			alert("Please enter home phone");
			document.getElementById('pHomePhone2').focus();
			return false;
		}*/
	if ((isNotEmpty(document.getElementById('pOfficePhone1'))) && (!isNotEmpty(document.getElementById('pOfficePhone2'))))
	{
		alert("Please enter office phone");
		document.getElementById('pOfficePhone2').focus();
		return false;
	}
	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;
	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}
	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}
	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}

	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	/* if(document.getElementById('cmbMethod').value == "" )
	{
		alert("Please select best method to contact");
		document.getElementById('cmbMethod').focus();
		return false;
	}
	if(document.getElementById('cmbMethod').value == "Phone" && document.getElementById('cmbTimeC').value == "" )
	{
		alert("Please select best time to contact");
		document.getElementById('cmbTimeC').focus();
		return false;
	}
		return true;	 */
}

/*Used Car Special Offer Form*/
function chkusedspecial(){

	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('txtadd1').value = trim(document.getElementById('txtadd1').value);
	document.getElementById('txtadd2').value = trim(document.getElementById('txtadd2').value);
	document.getElementById('txtcity').value = trim(document.getElementById('txtcity').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();	
	
	if(document.getElementById('txtemail').value == ""){
		alert("Please enter email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();

	if(document.getElementById('txtadd1').value != ""){
		document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();	
	}

	if(document.getElementById('txtadd2').value != ""){
		document.getElementById('txtadd2').value = (document.getElementById('txtadd2').value).ucfirst();	
	}

	if(!isName(document.getElementById('txtcity'))){ 
		alert("Please select a city");
		document.getElementById('txtcity').focus();
		return false;
	}
	document.getElementById('txtcity').value = (document.getElementById('txtcity').value).ucfirst();

	if(document.getElementById('txtpcode').value != "" && document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);

	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;

	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}

	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}
/*	if( (phoneLengthOff != 0) && ((document.getElementById('pOfficePhone1').value == 0) || (document.getElementById('pOfficePhone2').value== 0)))
	{
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;
	}*/
	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
/*		else
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;
		}*/
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}	

	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	
	
	document.getElementById('txtcomment').value = trim(document.getElementById('txtcomment').value);
	if(document.getElementById('txtcomment').value != "" && document.getElementById('txtcomment').value.length > 500){
		alert("Please enter upto 500 characters");
		document.getElementById('txtcomment').focus();
		return false;
	}
	if(document.getElementById('cmbMethod').value == "" )
	{
		alert("Please select best method to contact");
		document.getElementById('cmbMethod').focus();
		return false;
	}
	if((document.getElementById('cmbMethod').value == "phone" || document.getElementById('cmbMethod').value == "Phone") && document.getElementById('cmbTimeC').value == "" )
	{  
		alert("Please select best time to contact");
		document.getElementById('cmbTimeC').focus();
		return false;			
	}

	return true;	
}



/*Used Car Special Offer Form*/
function chknewspecial(){

	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('txtadd1').value = trim(document.getElementById('txtadd1').value);
	document.getElementById('txtadd2').value = trim(document.getElementById('txtadd2').value);
	document.getElementById('txtcity').value = trim(document.getElementById('txtcity').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();	
	
	if(document.getElementById('txtemail').value == ""){
		alert("Please enter email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();

	if(document.getElementById('txtadd1').value != ""){
		document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();	
	}

	if(document.getElementById('txtadd2').value != ""){
		document.getElementById('txtadd2').value = (document.getElementById('txtadd2').value).ucfirst();	
	}

	if(!isName(document.getElementById('txtcity'))){ 
		alert("Please select a city");
		document.getElementById('txtcity').focus();
		return false;
	}
	document.getElementById('txtcity').value = (document.getElementById('txtcity').value).ucfirst();

	if(document.getElementById('txtpcode').value != "" && document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);

	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;

	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}

	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}
/*	if( (phoneLengthOff != 0) && ((document.getElementById('pOfficePhone1').value == 0) || (document.getElementById('pOfficePhone2').value== 0)))
	{
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;
	}*/
	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
/*		else
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;
		}*/
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}	

	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	
	
	document.getElementById('txtcomment').value = trim(document.getElementById('txtcomment').value);
	if(document.getElementById('txtcomment').value != "" && document.getElementById('txtcomment').value.length > 500){
		alert("Please enter upto 500 characters");
		document.getElementById('txtcomment').focus();
		return false;
	}
	/* if(document.getElementById('cmbMethod').value == "" )
	{
		alert("Please select best method to contact");
		document.getElementById('cmbMethod').focus();
		return false;
	}
	if((document.getElementById('cmbMethod').value == "phone" || document.getElementById('cmbMethod').value == "Phone") && document.getElementById('cmbTimeC').value == "" )
	{  
		alert("Please select best time to contact");
		document.getElementById('cmbTimeC').focus();
		return false;			
	}

	return true; */	
}









function chkFinForm(){

   if(document.getElementById('lCarModel').value == ""){ 
		alert("Please select a model");
		document.getElementById('lCarModel').focus();
		return false;
	}	 

	if(document.getElementById('LIncome').value == ""){ 
		alert("Please select annual income");
		document.getElementById('LIncome').focus();
		return false;
	}
	if(document.getElementById('LAmount').value == ""){ 
		alert("Please select loan amount");
		document.getElementById('LAmount').focus();
		return false;
	}
	if(document.getElementById('LTimeFrame').value == ""){ 
		alert("Please select purchase time frame");
		document.getElementById('LTimeFrame').focus();
		return false;
	}
	if(document.getElementById('LDuration').value == ""){ 
		alert("Please select loan duration");
		document.getElementById('LDuration').focus();
		return false;
	}
	
	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);	
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('txtadd1').value = trim(document.getElementById('txtadd1').value);
	document.getElementById('txtadd2').value = trim(document.getElementById('txtadd2').value);
	document.getElementById('city').value = trim(document.getElementById('city').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();
	
	if(document.getElementById('txtemail').value == ""){
		alert("Please enter email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();
	
	if(document.getElementById('txtadd1').value != ""){
		document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();	
	}

	if(document.getElementById('txtadd2').value != ""){
		document.getElementById('txtadd2').value = (document.getElementById('txtadd2').value).ucfirst();	
	}
	if(document.getElementById('city').value == ""){
		alert("Please select a city");
		document.getElementById('city').focus();
		return false;
	}
	document.getElementById('city').value = (document.getElementById('city').value).ucfirst();
	

	if(document.getElementById('txtpcode').value != "" && document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);
	/*if(!isNotEmpty(document.getElementById('pHomePhone1'))){
		if(!isNotEmpty(document.getElementById('pOfficePhone1'))){
			if(!isNotEmpty(document.getElementById('pMobileNo'))){
				alert("Please enter mobile number");
				document.getElementById('pMobileNo').focus();
				return false;
			}
		}
	else if(!isNotEmpty(document.getElementById('pOfficePhone2'))){
		
		alert("Please enter office phone");
		document.getElementById('pOfficePhone2').focus();
		return false;
			} 
		}
	else if(!isNotEmpty(document.getElementById('pHomePhone2'))){
			alert("Please enter home phone");
			document.getElementById('pHomePhone2').focus();
			return false;
		}*/
	if ((isNotEmpty(document.getElementById('pOfficePhone1'))) && (!isNotEmpty(document.getElementById('pOfficePhone2'))))
	{
		alert("Please enter office phone");
		document.getElementById('pOfficePhone2').focus();
		return false;
	}
	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;
	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}
	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}
	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}

	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	/* if(document.getElementById('cmbMethod').value == "" )
	{
		alert("Please select best method to contact");
		document.getElementById('cmbMethod').focus();
		return false;
	}
	if(document.getElementById('cmbMethod').value == "Phone" && document.getElementById('cmbTimeC').value == "" )
	{
		alert("Please select best time to contact");
		document.getElementById('cmbTimeC').focus();
		return false;
	}

	else
	{
		return true;	
	} */
	
}



function chkUcarform(){

	var d = new Date();
	tyear = (d.getFullYear());
	
	objForm = document.formSellYourCar;		
	var selMake = document.getElementById('cmbMake');
	var selModel = document.getElementById('cmbModel');
	var selVariant = document.getElementById('cmbVariant');
	//alert("Variant==" + selVariant.value);
	document.getElementById('txtMake').value = trim(document.getElementById('txtMake').value)
	document.getElementById('txtModel').value = trim(document.getElementById('txtModel').value)
	document.getElementById('txtVariant').value = trim(document.getElementById('txtVariant').value)
	
	/* Make */
	if(selMake.options[selMake.selectedIndex].value == 'selmk')
		{
		alert("Please select a make");
		document.getElementById('cmbMake').focus();
		return false;
		}
    if((selMake.options[selMake.selectedIndex].value == 'othersmk') && (document.getElementById('txtMake').value == "" ))
		{
		alert("Please enter a make");
		document.getElementById('txtMake').focus();
		return false; 
		}
	if(document.getElementById('cmbModel').value == 'selmd' || document.getElementById('cmbModel').value == "")
		{
		alert("Please select a model");
		document.getElementById('cmbModel').focus();
		return false;
		}
	
	if((document.formSellYourCar.cmbModel.options[document.formSellYourCar.cmbModel.selectedIndex].value == 'othersmd') &&  (document.getElementById('txtModel').value == "" ))
		{				   			 
		alert("Please enter a model");
		
		document.getElementById('txtModel').focus();
		//alert(selVariant.options[selVariant.selectedIndex].value);
		return false; 
		}
	
	if(selVariant.options[selVariant.selectedIndex].value == 'selvt' || selVariant.options[selVariant.selectedIndex].value == "")
		{
		//alert(document.formSellYourCar.cmbVariant.options[document.formSellYourCar.cmbVariant.selectedIndex].value);	
		alert("Please select a variant");
		document.getElementById('cmbVariant').focus();
		return false;
		}
  		
if((document.formSellYourCar.cmbVariant.options[document.formSellYourCar.cmbVariant.selectedIndex].value == 'othersvt') && (document.getElementById('txtVariant').value == "" ))
		{
		alert("Please enter a variant");
		document.getElementById('txtVariant').focus();
		return false; 
		}
		
		if(document.getElementById('cmbmonth').selectedIndex == 0)
		{
		alert("Please select manufacturing month");
		document.getElementById('cmbmonth').focus();
		return false;
		}
	if(document.getElementById('year').value=="Year(YYYY)")
		{
		alert("Please enter year in YYYY format");
		document.getElementById('year').focus();
		return false;
		}
	if(document.getElementById('year').value.length < 4){
		alert("Please enter year in YYYY format");
		document.getElementById('year').focus();
		return false;
	}
	if(document.getElementById('year').value < 1900){
		alert("Please enter year after 1900");
		document.getElementById('year').focus();
		return false;
	}
	//alert(tyear);
	if(document.getElementById('year').value > tyear) {
		alert("Please enter proper year");	
		document.getElementById('year').focus();
		return false;
	}
	document.getElementById('regno').value = trim(document.getElementById('regno').value);
	
	if (document.getElementById('regno').value == "" ){ 
		alert("Please enter registration number");
		document.getElementById('regno').focus();
		return false;
	}
	
	if (document.getElementById('regno').value != "")
	{	
			var val = document.getElementById('regno').value;
			val = val.substring(0,1);
			var objRegExp  =  /^[a-zA-Z- ]+$/; 
			var flag = objRegExp.test(val);
			
		 if(val != "" && !flag)
		 {
			 alert("Please enter a valid registration number");
			 document.getElementById('regno').focus();
			 return false;
		 }
		 
	}
	if (document.getElementById('regno').value != "")
	{	
		var val = document.getElementById('regno').value;
		var objRegExp  =  /^(?!^[a-zA-Z]*$)(?!^[0-9]*$)^([a-zA-Z0-9]((\s?\-?)|(-?\s?)|(\s?\-{1}\s?)))+$/;	
		var flag = objRegExp.test(val);

		 if(val != "" && !flag)
		 {
			 alert("Please enter a valid registration number");
			 document.getElementById('regno').focus();
			 return false;
		 }
		 
	}
	document.getElementById('regno').value = (document.getElementById('regno').value).toUpperCase();
	if(document.getElementById('pMileage').value == "")
	{
		alert("Please select mileage");
		document.getElementById('pMileage').focus();
		return false;
	}
	
	if(document.getElementById('cmmExpPrice').value == "")
	{
		alert("Please select expected price");
		document.getElementById('cmmExpPrice').focus();
		return false;
	}
	if(document.getElementById('condition').value == "")
	{
		alert("Please select condition");
		document.getElementById('condition').focus();
		return false;
	}
		
	
	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);	
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('txtadd1').value = trim(document.getElementById('txtadd1').value);
	document.getElementById('txtadd2').value = trim(document.getElementById('txtadd2').value);
	document.getElementById('city').value = trim(document.getElementById('city').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();
	
	if(document.getElementById('txtemail').value == ""){
		alert("Please enter email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();
	
	if(document.getElementById('txtadd1').value != ""){
		document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();	
	}

	if(document.getElementById('txtadd2').value != ""){
		document.getElementById('txtadd2').value = (document.getElementById('txtadd2').value).ucfirst();	
	}
	if(document.getElementById('city').value == ""){
		alert("Please select a city");
		document.getElementById('city').focus();
		return false;
	}
	document.getElementById('city').value = (document.getElementById('city').value).ucfirst();
	

	if(document.getElementById('txtpcode').value != "" && document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);
	/*if(!isNotEmpty(document.getElementById('pHomePhone1'))){
		if(!isNotEmpty(document.getElementById('pOfficePhone1'))){
			if(!isNotEmpty(document.getElementById('pMobileNo'))){
				alert("Please enter mobile number");
				document.getElementById('pMobileNo').focus();
				return false;
			}
		}
	else if(!isNotEmpty(document.getElementById('pOfficePhone2'))){
		
		alert("Please enter office phone");
		document.getElementById('pOfficePhone2').focus();
		return false;
			} 
		}
	else if(!isNotEmpty(document.getElementById('pHomePhone2'))){
			alert("Please enter home phone");
			document.getElementById('pHomePhone2').focus();
			return false;
		}*/
	if ((isNotEmpty(document.getElementById('pOfficePhone1'))) && (!isNotEmpty(document.getElementById('pOfficePhone2'))))
	{
		alert("Please enter office phone");
		document.getElementById('pOfficePhone2').focus();
		return false;
	}
	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;
	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}
	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}
	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}

	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	
}


//Usedcars details
function checkusedcontact() {
	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('txtcity').value = trim(document.getElementById('txtcity').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();
	
	if(document.getElementById('txtemail').value==""){ 
		alert("Please enter e-mail id");
		document.getElementById('txtemail').focus();
		return false;
	}
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();

	if(document.getElementById('txtcity').value==""){ 
		alert("Please enter city");
		document.getElementById('txtcity').focus();
		return false;
	}
	document.getElementById('txtcity').value = (document.getElementById('txtcity').value).ucfirst();
	
	if(document.getElementById('txtpcode').value != "" && document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);

	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;

	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}
	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}

	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}	

	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	
/* 	if(document.getElementById('cmbMethod').value == "" )
	{
		alert("Please select best method to contact");
		document.getElementById('cmbMethod').focus();
		return false;
	}
	if(document.getElementById('cmbMethod').value == "Phone" && document.getElementById('cmbTimeC').value == "" )
	{
		alert("Please select best time to contact");
		document.getElementById('cmbTimeC').focus();
		return false;
	}

	return true;	 */	
}

function checkPricerange() {
	document.newCarIndexPage.submit();
/* 	if(document.getElementById("pricerange").value =="") {
		alert("Please select a price range");
		return false;
	} */
}

/*Usecars landing page*/
function formvalid()
{

	formElement = document.getElementById('formCalculator');
	if(formElement.loan_amount.value.indexOf('.') > 0)
	{
	alert("Loan Amount does not accept fractions");
	formElement.loan_amount.value = "";
	formElement.loan_amount.focus();
	return false;
	}

	if(formElement.loan_amount.value=="") {
		alert("Please enter the loan amount");
		formElement.loan_amount.focus();
		return false;
	}
	else if (parseInt(formElement.loan_amount.value) > 10000000) {
					alert("Loan amount is limited to 1 Crore");
		formElement.loan_amount.focus();
		return false;
	}

	else if (parseInt(formElement.loan_amount.value) < 100000) {
					alert("Minimum loan amount is 1 lakh");
		formElement.loan_amount.focus();
		return false;
	}

	if(formElement.interest.value=="") {
		alert("Please enter the interest");
		formElement.interest.focus();
		return false;
	}
	
	if(formElement.interest.value == 0) {
		alert("Rate of interest can't be 0%");
		formElement.interest.focus();
		return false;
	}

else if (parseInt(formElement.interest.value) > 50) {
    alert("Rate of interest can't be more than 50%");
	formElement.interest.focus();
	return false;
}
else {
	if(formElement.interest.value.indexOf(".") > 0) {
		var check = formElement.interest.value.split(".");
		if(check[0].length > 2) {
			alert("Please enter proper interest rate");
			formElement.interest.focus();
			return false;
		}
	}
	
}

/*if(formElement.installments.selectedIndex == "") {
	alert("Please select the Long Term/Tenure");
	formElement.installments.focus();
	return false;
}*/
showEMI();
return true;
}


function showEMI() {
 if ((document.formCalculator.loan_amount.value == 0 || !isNotEmpty(document.formCalculator.loan_amount)) 
|| (document.formCalculator.interest.value == 0))
 { document.formCalculator.emi.value = ""; }
 else
 {
 var princ = document.formCalculator.loan_amount.value;
	var intr  = document.formCalculator.interest.value / 1200;
 var term12=12;
	var term24=24;
	var term36=36;
	var term48=48;
	var term60=60;
	var term72=72;
	var term84=84;
	  
 var dp12=commaAppend(Math.round(princ * intr / (1 - (Math.pow(1/(1 + intr), term12)))));
	var dp24=commaAppend(Math.round(princ * intr / (1 - (Math.pow(1/(1 + intr), term24)))));
	var dp36=commaAppend(Math.round(princ * intr / (1 - (Math.pow(1/(1 + intr), term36)))));
	var dp48=commaAppend(Math.round(princ * intr / (1 - (Math.pow(1/(1 + intr), term48)))));
	var dp60=commaAppend(Math.round(princ * intr / (1 - (Math.pow(1/(1 + intr), term60)))));
	var dp72=commaAppend(Math.round(princ * intr / (1 - (Math.pow(1/(1 + intr), term72)))));
	var dp84=commaAppend(Math.round(princ * intr / (1 - (Math.pow(1/(1 + intr), term84)))));
	
	document.getElementById("ddp12").innerHTML = dp12;
	document.getElementById("ddp24").innerHTML = dp24;
	document.getElementById("ddp36").innerHTML = dp36;
	document.getElementById("ddp48").innerHTML = dp48;
	document.getElementById("ddp60").innerHTML = dp60;
	document.getElementById("ddp72").innerHTML = dp72;
	document.getElementById("ddp84").innerHTML = dp84;
	

 }
}
function initCol()
{   
var r = 255, g = 222, b = 59;var t = setTimeout("lowerColor("+r+","+g+","+b+");", 60); }

function faintAgain(r,g,b)
{  	var t = setTimeout("lowerColor("+r+","+g+","+b+");", 60); }

function lowerColor(r,g,b)
{   document.getElementById('emiMain').style.backgroundColor="rgb("+r+","+g+","+b+")";
	b += 10;
	if(b < 255)	{faintAgain(r,g,b); }	
}

/*Sign Up Form*/
function chksignupform(){
	
	document.getElementById('txtcode').value = trim(document.getElementById('txtcode').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('txtpass').value = trim(document.getElementById('txtpass').value);
	document.getElementById('txtpass1').value = trim(document.getElementById('txtpass1').value);
	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtadd1').value = trim(document.getElementById('txtadd1').value);
	document.getElementById('txtadd2').value = trim(document.getElementById('txtadd2').value);
	document.getElementById('txtcity').value = trim(document.getElementById('txtcity').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	document.getElementById('txtcode').value = trim(document.getElementById('txtcode').value);
	
	if(document.getElementById('txtemail').value == ""){
		alert("Please enter email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	if (document.getElementById('txtemail').value !="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();
	
	if(document.getElementById('txtpass').value == ""){ 
		alert("Please enter password");
		document.getElementById('txtpass').focus();
		return false;
	}
	if(document.getElementById('txtpass').value.length < 6){ 
		alert("Password cannot be less than 6 characters");
		document.getElementById('txtpass').focus();
		return false;
	}
	if(document.getElementById('txtpass1').value == ""){ 
		alert("Please enter confirm password");
		document.getElementById('txtpass1').focus();
		return false;
	}
	
	if((document.getElementById('txtpass1').value != "" && ((document.getElementById('txtpass1').value != (document.getElementById('txtpass').value ))))){ 
		alert("Confirm password and password should be same");
		document.getElementById('txtpass1').focus();
		return false;
	}
	
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();
	
	if(document.getElementById('txtadd1').value == ""){
		alert("Please enter address");
		document.getElementById('txtadd1').focus();
		return false;
	}
	document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();
	
	if(document.getElementById('txtadd2').value != ""){
		document.getElementById('txtadd2').value = (document.getElementById('txtadd2').value).ucfirst();	
	}
	
	if(!isName(document.getElementById('txtcity'))){ 
		alert("Please enter city");
		document.getElementById('txtcity').focus();
		return false;
	}
	if(document.getElementById('txtpcode').value == ""){ 
		alert("Please enter pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	if(document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);

	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;
	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}
	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}
	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	if(document.getElementById('txtcode').value == ""){
		alert("Please enter the code shown");
		document.getElementById('txtcode').focus();
		return false;
	}
	
	if(document.getElementById('txtcode').value!=code){
		alert("Wrong access code entered.")
		document.getElementById('txtcode').value ="";
		document.getElementById('txtcode').focus();
		return false;
	}
	
}

function checkCareer(){

	document.getElementById('txtfname').value = trim(document.getElementById('txtfname').value);
	document.getElementById('txtlname').value = trim(document.getElementById('txtlname').value);
	document.getElementById('txtemail').value = trim(document.getElementById('txtemail').value);
	document.getElementById('txtadd1').value = trim(document.getElementById('txtadd1').value);
	document.getElementById('txtadd2').value = trim(document.getElementById('txtadd2').value);
	document.getElementById('txtcity').value = trim(document.getElementById('txtcity').value);
	document.getElementById('txtpcode').value = trim(document.getElementById('txtpcode').value);
	
	if(!isName(document.getElementById('txtfname'))){ 
		alert("Please enter first name");
		document.getElementById('txtfname').focus();
		return false;
	}
	document.getElementById('txtfname').value = (document.getElementById('txtfname').value).ucfirst();
	if(!isName(document.getElementById('txtlname'))){ 
		alert("Please enter last name");
		document.getElementById('txtlname').focus();
		return false;
	}
	document.getElementById('txtlname').value = (document.getElementById('txtlname').value).ucfirst();
	
	if(document.getElementById('txtemail').value==""){ 
		alert("Please enter e-mail id");
		document.getElementById('txtemail').focus();
		return false;
	}
	if (document.getElementById('txtemail').value!="" && !valid_email(document.getElementById('txtemail').value)){ 
		alert("Please enter valid email id");
		document.getElementById('txtemail').focus();
		return false;
	}
	document.getElementById('txtemail').value = (document.getElementById('txtemail').value).toLowerCase();

	if(document.getElementById('txtadd1').value != ""){
		document.getElementById('txtadd1').value = (document.getElementById('txtadd1').value).ucfirst();	
	}
	
	if(document.getElementById('txtadd2').value != ""){
		document.getElementById('txtadd2').value = (document.getElementById('txtadd2').value).ucfirst();	
	}
	if(document.getElementById('txtcity').value==""){ 
		alert("Please select a city");
		document.getElementById('txtcity').focus();
		return false;
	}
	document.getElementById('txtcity').value = (document.getElementById('txtcity').value).ucfirst();
	
	if(document.getElementById('txtpcode').value != "" && document.getElementById('txtpcode').value <100000){ 
		alert("Please enter proper pincode");
		document.getElementById('txtpcode').focus();
		return false;
	}
	
	document.getElementById('pHomePhone1').value = trim(document.getElementById('pHomePhone1').value);
	document.getElementById('pHomePhone2').value = trim(document.getElementById('pHomePhone2').value);
	document.getElementById('pOfficePhone1').value = trim(document.getElementById('pOfficePhone1').value);
	document.getElementById('pOfficePhone2').value = trim(document.getElementById('pOfficePhone2').value);
	document.getElementById('pMobileNo').value = trim(document.getElementById('pMobileNo').value);

	var phoneLengthHome = document.getElementById('pHomePhone1').value.length + document.getElementById('pHomePhone2').value.length;
	var phoneLengthOff =  document.getElementById('pOfficePhone1').value.length + document.getElementById('pOfficePhone2').value.length;

	if(phoneLengthHome != 0){
		var stdHomeCodeFtmt = (document.getElementById('pHomePhone1').value).substring(0,1);
		var stdHomeCodeFtmt1 = (document.getElementById('pHomePhone1').value).substring(1,2);
		if(stdHomeCodeFtmt !=0 || stdHomeCodeFtmt1 == 0)
		{
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;			
		}
		if((document.getElementById('pHomePhone1').value != "") && (document.getElementById('pHomePhone2').value == ""))
		{
			alert("Please enter home phone");	
			document.getElementById('pHomePhone2').focus();
			return false;
		}
	}
	var phoneHomeFtmt = (document.getElementById('pHomePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pHomePhone2')) && (phoneHomeFtmt <=1))
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone2').focus();
			return false;
		}	
	if(isNotEmpty(document.getElementById('pHomePhone2')) && parseInt(phoneLengthHome) != 11)
		{		
			alert("Please check the home std code / phone number you have entered");
			document.getElementById('pHomePhone1').focus();
			return false;
		}

	if(phoneLengthOff != 0){
		var stdOffCodeFtmt = (document.getElementById('pOfficePhone1').value).substring(0,1);
		var stdOffCodeFtmt1 = (document.getElementById('pOfficePhone1').value).substring(1,2);
		if(stdOffCodeFtmt !=0 || stdOffCodeFtmt1 == 0)
		{
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone1').focus();
			return false;			
		}
		if((document.getElementById('pOfficePhone1').value != "") && (document.getElementById('pOfficePhone2').value == ""))
		{
			alert("Please enter office phone");	
			document.getElementById('pOfficePhone2').focus();
			return false;
		}
	}
	var phoneOffFtmt = (document.getElementById('pOfficePhone2').value).substring(0,1);
	if(isNotEmpty(document.getElementById('pOfficePhone2')) && (phoneOffFtmt <=1))
		{		
			alert("Please check the office std code / phone number you have entered");
			document.getElementById('pOfficePhone2').focus();
			return false;
		}	

	if(isNotEmpty(document.getElementById('pOfficePhone2')) && parseInt(phoneLengthOff) != 11)
		{	
		alert("Please check the office std code / phone number you have entered");
		document.getElementById('pOfficePhone1').focus();
		return false;			
	}
	var mobLength = document.getElementById('pMobileNo').value.length;
	if(document.getElementById("pMobileNo").value == "")
	{
		alert("Please enter mobile number");
		document.getElementById("pMobileNo").focus();
		return false;
	}
	if(document.getElementById("pMobileNo").value != "")
	{
		var str = document.getElementById("pMobileNo").value;
		str = str.substring(0,1);
		if(isNotEmpty(document.getElementById("pMobileNo")) && parseInt(mobLength) != 11) 
		{
			if(str != 7 && str != 8 && str != 9) 
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
			if(parseInt(mobLength) < 10 || parseInt(mobLength) > 10)
			{
				alert("Please check the mobile number you have entered");
				document.getElementById("pMobileNo").focus();
				return false;
			}
		}
	}
	
	//

				filename = document.getElementById('myfile').value;
				if(filename!=""){

//	formats accepted here ".doc,.docx,.txt, .pdf "
				if(filename.indexOf(".doc") == -1){
					if(filename.indexOf(".docx") == -1){
						if(filename.indexOf(".DOC") == -1){
							if(filename.indexOf(".DOCX") == -1){
								if(filename.indexOf(".txt") == -1){
									if(filename.indexOf(".TXT") == -1){
										if(filename.indexOf(".pdf") == -1){
										if(filename.indexOf(".PDF") == -1){
										document.getElementById('myfile').value="";
										filename='';
										document.getElementById('myfile').select();
										document.getElementById('myfile').focus();
										alert("please enter .doc,.txt,.pdf file only");
										return false;
										}}}}}}}}
						}// not == null		
else 
	{
		alert("Please upload the resume");
		document.getElementById('myfile').focus();
		return false;
	}						
										


}
