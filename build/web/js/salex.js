/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function valid_email(mailStr){
	var matchStr=mailStr;
	var isValid = (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/.test(matchStr));

	if(isValid){
		return true;
	}
	else{
		return false;
	}
}
function chknum(elem,name,msg,len)
{
	z=elem;
	var ex=/^[0-9]+$/;
	chk=z.match(ex);
	if(z.length!=len || chk==null)
	{
		alert(msg+" is invalid. \nShould be numbers with length "+len);
		name.value="";
		name.focus();
		return false;
	}
	else
		return true;

}

function fa()
{          
     if(document.getElementById('cat').value == 0){
		alert("Please Select any category");
		document.getElementById('cat').focus();
		return false;
        }
        else if(document.getElementById('userid').value ==""){
		alert("Please enter Userid");
		document.getElementById('userid').focus();
		return false;
        }
        else if(document.getElementById('userid').value.length < 6){
		alert("Userid cannot be less than 6 characters");
		document.getElementById('userid').focus();
		return false;
        }
        if(document.getElementById('pass').value == ""){
		alert("Please enter password");
		document.getElementById('pass').focus();
		return false;
        }
	else if(document.getElementById('pass').value.length < 6){
		alert("Password cannot be less than 6 characters");
		document.getElementById('pass').focus();
		return false;
	}
	else if(document.getElementById('pass1').value == ""){
		alert("Please enter confirm password");
		document.getElementById('pass1').focus();
		return false;
	}

	else if((document.getElementById('pass1').value != "" && ((document.getElementById('pass1').value != (document.getElementById('pass').value ))))){
		alert("Confirm password and password should be same");
		document.getElementById('pass1').focus();
		return false;
	}
       else if(document.getElementById('fname').value == ""){
		alert("Please enter  first name");
		document.getElementById('fname').focus();
		return false;
                }
      
        else if(document.getElementById('add').value == ""){
		alert("Please enter  address");
		document.getElementById('add').focus();
		return false;
                }
           else if(document.getElementById('city').value == ""){
		alert("Please enter  city");
		document.getElementById('city').focus();
		return false;
                }
            else if(document.getElementById('state').value == ""){
		alert("Please enter  state");
		document.getElementById('state').focus();
		return false;
                }
            
else if(document.getElementById('mobile').value == "" ){
		alert("Please enter  mobile number");
		document.getElementById('mobile').focus();
		return false;
                }
                else if(document.getElementById('mobile').value.length <10){
		alert("mobile cannot be less than 10 numbers");
		document.getElementById('mobile').focus();
		return false;
                }
if(document.getElementById('email').value==""){
		alert("Please enter e-mail id");
		document.getElementById('email').focus();
		return false;
	}
	if (document.getElementById('email').value!="" && !valid_email(document.getElementById('email').value)){
		alert("Please enter valid email id");
		document.getElementById('email').focus();
		return false;
	}
	else if(document.getElementById('dob').value=="")
	{
	alert("Please enter date of birth");
	document.getElementById('dob').focus();
		return false;
	}
        else if(document.getElementById('doj').value=="")
	{
	alert("Please enter date of joining");
	document.getElementById('doj').focus();
		return false;
	}
      else if(document.getElementById('terr').value=="")
	{
	alert("Please enter territory");
	document.getElementById('terr').focus();
		return false;
	}
        else
            {
                document.frmsignup.submit();
            }
}
function fa1()
{
    if(document.getElementById('sm').value == "null"){
		alert("Plese go login ");
				return false;
        }
   else if(document.getElementById('cat').value == 0){
		alert("Please Select any category");
		document.getElementById('cat').focus();
		return false;
        }
        else if(document.getElementById('userid').value ==""){
		alert("Please enter Userid");
		document.getElementById('userid').focus();
		return false;
        }
        else if(document.getElementById('userid').value.length < 6){
		alert("Userid cannot be less than 6 characters");
		document.getElementById('userid').focus();
		return false;
        }
        if(document.getElementById('pass').value == ""){
		alert("Please enter password");
		document.getElementById('pass').focus();
		return false;
        }
	else if(document.getElementById('pass').value.length < 6){
		alert("Password cannot be less than 6 characters");
		document.getElementById('pass').focus();
		return false;
	}
	else if(document.getElementById('pass1').value == ""){
		alert("Please enter confirm password");
		document.getElementById('pass1').focus();
		return false;
	}

	else if((document.getElementById('pass1').value != "" && ((document.getElementById('pass1').value != (document.getElementById('pass').value ))))){
		alert("Confirm password and password should be same");
		document.getElementById('pass1').focus();
		return false;
	}
       else if(document.getElementById('fname').value == ""){
		alert("Please enter  first name");
		document.getElementById('fname').focus();
		return false;
                }

        else if(document.getElementById('add').value == ""){
		alert("Please enter  address");
		document.getElementById('add').focus();
		return false;
                }
           else if(document.getElementById('city').value == ""){
		alert("Please enter  city");
		document.getElementById('city').focus();
		return false;
                }
            else if(document.getElementById('state').value == ""){
		alert("Please enter  state");
		document.getElementById('state').focus();
		return false;
                }

else if(document.getElementById('mobile').value == "" ){
		alert("Please enter  mobile number");
		document.getElementById('mobile').focus();
		return false;
                }
                else if(document.getElementById('mobile').value.length <10){
		alert("mobile cannot be less than 10 numbers");
		document.getElementById('mobile').focus();
		return false;
                }
if(document.getElementById('email').value==""){
		alert("Please enter e-mail id");
		document.getElementById('email').focus();
		return false;
	}
	if (document.getElementById('email').value!="" && !valid_email(document.getElementById('email').value)){
		alert("Please enter valid email id");
		document.getElementById('email').focus();
		return false;
	}
	else if(document.getElementById('dob').value=="")
	{
	alert("Please enter date of birth");
	document.getElementById('dob').focus();
		return false;
	}
        else if(document.getElementById('doj').value=="")
	{
	alert("Please enter date of joining");
	document.getElementById('doj').focus();
		return false;
	}
      else if(document.getElementById('terr').value==0)
	{
	alert("Please enter territory");
	document.getElementById('terr').focus();
		return false;
	}
        else
            {
                document.frmsignup.submit();
            }
}
function customer()
{
    if(document.getElementById('userid').value ==""){
		alert("Please enter Customerid");
		document.getElementById('userid').focus();
		return false;
        }
        else if(document.getElementById('userid').value.length < 6){
		alert("Customerid cannot be less than 6 characters");
		document.getElementById('userid').focus();
		return false;
        }
         else if(document.getElementById('name').value == ""){
		alert("Please enter customer name");
		document.getElementById('name').focus();
		return false;
                }

        else if(document.getElementById('add').value == ""){
		alert("Please enter  address");
		document.getElementById('add').focus();
		return false;
                }
           else if(document.getElementById('city').value == ""){
		alert("Please enter  city");
		document.getElementById('city').focus();
		return false;
                }
            else if(document.getElementById('state').value == 0){
		alert("Please enter  state");
		document.getElementById('state').focus();
		return false;
                }

else if(document.getElementById('mobile').value == ""){
		alert("Please enter  mobile number");
		document.getElementById('mobile').focus();
		return false;
                }
                else if(document.getElementById('mobile').value.length <10){
		alert("mobile cannot be less than 10 numbers");
		document.getElementById('mobile').focus();
		return false;
                }
if(document.getElementById('email').value==""){
		alert("Please enter e-mail id");
		document.getElementById('email').focus();
		return false;
	}
	if (document.getElementById('email').value!="" && !valid_email(document.getElementById('email').value)){
		alert("Please enter valid email id");
		document.getElementById('email').focus();
		return false;
	}
	else if(document.getElementById('dob').value=="")
	{
	alert("Please enter date of birth");
	document.getElementById('dob').focus();
		return false;
	}
else if(document.getElementById('ig').value == ""){
		alert("Please enter incomfe group");
		document.getElementById('ig').focus();
		return false;
                }
      else if(document.getElementById('occu').value=="")
	{
	alert("Please enter occuption");
	document.getElementById('occu').focus();
		return false;
	}
        else
            {
                document.frm.submit();
            }
}
