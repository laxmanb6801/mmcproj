<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Sarkar Muncipal Online Complaint Software </title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript">
function val()
{
var a = document.f1.firstn.value;
if(a=="")
{
alert("Enter first name");
document.f1.firstn.focus();
return false;
}
var b = document.f1.last.value;
if(b=="")
{
alert("Enter last name");
document.f1.last.focus();
return false;
}
var c = document.f1.age.value;
if(c=="")
{
alert("Enter your age");
document.f1.age.focus();
return false;
}
if(isNaN(c))
{
alert("Enter your age in numbers");
document.f1.age.focus();
return false;
}
if(c<20||c>120)
{
alert("Enter appropriate age");
document.f1.age.focus();
return false;
}
if(document.f1.gender[0].checked==false&&document.f1.gender[1].checked==false)
{
alert("Select gender");
return false;
}
var e = document.f1.addr.value;
if(e=="")
{
alert("Enter your address");
document.f1.addr.focus();
return false;
}
var f = document.f1.city.value;
if(f=="")
{
alert("Enter your city");
document.f1.city.focus();
return false;
}
var g = document.f1.dis.value;
if(g=="")
{
alert("Enter your district");
document.f1.dis.focus();
return false;
}
var h = document.f1.state.value;
if(h=="")
{
alert("Enter your state");
document.f1.state.focus();
return false;
}
var i = document.f1.pin.value;
if(i=="")
{
alert("Enter pincode");
document.f1.pin.focus();
return false;
}
if(isNaN(i))
{
alert("Enter pincode in numbers");
document.f1.pin.focus();
return false;
}
if(i.length!=6)
{
alert("Enter 6 digits");
document.f1.pin.focus();
return false;
}

var j = document.f1.slry.value;
if(j=="")
{
alert("Enter Salary Detail");
document.f1.slry.focus();
return false;
}
if(isNaN(j))
{
alert("Enter Salary in numbers");
document.f1.slry.focus();
return false;
}
if(j.length!=6)
{
alert("Enter 6 digits Only ");
document.f1.slry.focus();
return false;
}

var k = document.f1.mobile.value;
if(k=="")
{
alert("Enter mobile number");
document.f1.mobile.focus();
return false;
}
if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.f1.mobile.focus();
return false;
}
if(k.charAt(0)!=9)
{
alert("Enter the correct mobile no");
document.f1.mobile.focus();
return false;
}
if(k.length!=10)
{
alert("Enter 10 digits");
document.f1.mobile.focus();
return false;
}

var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.f1.mail.value);
    if(m==false)
    {
        alert("Please enter a valid Email Id");
	document.f1.mail.focus();
        return false;
    }
	if(document.f1.emptyp.selectedIndex==0)
{
alert("Select Employee type");
return false;
}
var n = document.f1.username.value;
if(n=="")
{
alert("Enter your desired username");
document.f1.username.focus();
return false;
}
var o = document.f1.pass.value;
if(o=="")
{
alert("Enter desired password");
document.f1.pass.focus();
return false;
}
var p = document.f1.cpass.value;
if(p=="")
{
alert("Confirm your password");
document.f1.cpass.focus();
return false;
}
if(o!=p)
{
alert("Your passwords doesnt match");
document.f1.cpass.focus();
return false;
}
}
</script>
</head>






<body>
<div id="header">
<div id="logo">
	<h1><a href="#"> </a></h1>
	<p><img src="images/muncipal4.jpg" width="800" height="115" align="left"/></p>
  </div>
  
  
  
</div>
<div id="menu-wrapz">
<div id="menuz">
<h class="byline"><strong><marquee behavior="scroll" direction="left" bgcolor="#000000" ><font color="#00FF00" size="2">Sarkar Muncipal Online Complaint Software </font></marquee></strong></h>
</div>
</div>


<div id="menu-wrap">
<div id="menu">&nbsp;&nbsp;&nbsp;&nbsp;
	<!--<ul>
		<li class="first"><a href="index.html" accesskey="1" title="">Homepage</a></li>
		<li><a href="department.jsp" accesskey="2" title="">Department</a></li>
		<li><a href="services.jsp" accesskey="3" title="">Services</a></li>
		<li><a href="tender.jsp" accesskey="4" title="">Tenders</a></li>
		<li><a href="gallery.jsp" accesskey="4" title="">Gallery</a></li>
		<li><a href="aboutus.jsp" accesskey="4" title="">About Us</a></li>
		<li><a href="contactus.jsp" accesskey="5" title="">Contact Us</a></li>
	</ul>-->
</div>
</div>
<hr/>




<div id="latest-post-wrap">
<div id="latest-post" class="post">
<p align="center"><strong><font size="5" color="#CC0000">EMPLOYEE REGISTRATION</font></strong></p>





<form action="officersinst.jsp" name="f1" method="post" onsubmit="return val();">






  <table align="center" width="600" height="600" border="1">
        <tr> 
          <td class="new1"><strong><font size="4">First Name:</font></strong></td>
  <td class="field"><input type="text" name="firstn"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Last Name :</font></strong> </td>
  <td class="field"><input type="text" name="last"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Age :</font></strong> </td>
  <td class="field"><input type="text" name="age"></td>
  </tr>
   <tr>
  <td class="new1"><strong><font size="4">Gender :</font></strong> </td>
  <td><input type="radio" name="gender" value="male">Male&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="female">Female</td>
  <tr>
  <td class="new1"><strong><font size="4">Address : </font></strong></td>
  <td class="field"><textarea name="addr" rows="5" cols="17"></textarea></td>
  </tr>
   <tr>
  <td class="new1"><strong><font size="4">City :</font></strong> </td>
  <td class="field"><input type="text" name="city"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">District :</font></strong> </td>
  <td class="field"><input type="text" name="dis"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">State :</font></strong> </td>
  <td class="field"><input type="text" name="state"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Pincode :</font></strong> </td>
  <td class="field"><input type="text" name="pin"></td>
  </tr>
  
  <tr>
  <td class="new1"><strong><font size="4">Salary Per Year :</font></strong> </td>
  <td class="field"><input type="text" name="slry"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Mobile :</font></strong> </td>
  <td class="field"><input type="text" name="mobile"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">E-Mail ID :</font></strong> </td>
  <td class="field"><input type="text" name="mail"></td>
  </tr>
 
 
 
  <tr>
  <td class="new1"><strong><font size="4">Employee type : </font></strong></td>
  <td><select name="emptyp">
  <option selected value>--type--</option>
  <option>Officers</option>
  <option>Metro Water Emp</option>
  <option>Education Dept Emp</option>
  <option>Electricity Dept Emp</option>
  <option>Sanitation Dept Emp</option>
  </select></td>
  </tr>
  
  
  
  <tr>
  <td class="new1"><strong><font size="4">Desired username :</font></strong> </td>
  <td class="field"><input type="text" name="username"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Desired password : </font></strong></td>
  <td class="field"><input type="password" name="pass"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Confirm password :</font></strong> </td>
  <td class="field"><input type="password" name="cpass"></td>
  </tr>
  
  
  
  <tr>
  <td></td>
	  <td><input type="submit" name="sub" value="Register" class="button">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value="Clear" class="button"></td></tr>
 
 
 
  </table>
  </form>
 
	<p class="meta"><a href="#" class="comments"></a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink"></a></p>
</div>
</div>



<div id="footer">
	<p class="legal"><strong><font size="4"><a href="index.html">www.municipalcorporation.com</a></font></strong></p>
	</div>
</body>
</html>
