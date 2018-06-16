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
var a = document.f1.pnam.value;
var b = document.f1.dob.value;
var c = document.f1.dod.value;
if(a=="")
{
alert("Enter person name");
document.f1.pnam.focus();
return false;
}

if(document.f1.gender[0].checked==false&&document.f1.gender[1].checked==false&&document.f1.gender[2].checked==false)
{
alert("Select gender");
return false;
}
 var reDate = /(?:0[1-9]|[12][0-9]|3[01])\/(?:0[1-9]|1[0-2])\/(?:19|20\d{2})/;
 var b= reDate.test(b);
if(b==false)
{
alert("Enter your Date Of Birth in the format of dd/mm/yyyy");
document.f1.dob.focus();
return false;
}


 var reDate = /(?:0[1-9]|[12][0-9]|3[01])\/(?:0[1-9]|1[0-2])\/(?:19|20\d{2})/;
 var c= reDate.test(c);
if(c==false)
{
alert("Enter your Date Of Death in the format of dd/mm/yyyy");
document.f1.dod.focus();
return false;
}

if(document.f1.pod[0].checked==false&&document.f1.pod[1].checked==false&&document.f1.pod[2].checked==false&&document.f1.pod[3].checked==false)
{
alert("Select The Place Of Death");
return false;
}

var e = document.f1.adrs.value;
if(e=="")
{
alert("Enter your address");
document.f1.adrs.focus();
return false;
}
var f = document.f1.fatnm.value;
if(f=="")
{
alert("Enter The Father Name Or Husband Name");
document.f1.fatnm.focus();
return false;
}
var g = document.f1.motnm.value;
if(g=="")
{
alert("Enter The Mother Name");
document.f1.motnm.focus();
return false;
}
var i = document.f1.rcn.value;
if(i=="")
{
alert("Enter Ration Card No");
document.f1.rcn.focus();
return false;
}
if(isNaN(i))
{
alert("Enter Ration Card No in numbers");
document.f1.rcn.focus();
return false;
}
if(i.length!=6)
{
alert("Enter 6 digits");
document.f1.rcn.focus();
return false;
}
var j = document.f1.hcn.value;
if(j=="")
{
alert("Enter Ration Card No");
document.f1.hcn.focus();
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
	<ul>
		<li class="first"><a href="index.html" accesskey="1" title="">Homepage</a></li>
		<li><a href="department1.jsp" accesskey="2" title="">Department</a></li>
		<li><a href="services1.jsp" accesskey="3" title="">Services</a></li>
		<li><a href="tender1.jsp" accesskey="4" title="">Tenders</a></li>
		<li><a href="gallery1a.jsp" accesskey="4" title="">Gallery</a></li>
		<li><a href="aboutus1.jsp" accesskey="4" title="">About Us</a></li>
		<li><a href="contactus1.jsp" accesskey="5" title="">Contact Us</a></li>
	</ul>
</div>
</div>
<hr/>
<div id="latest-post-wrap">
<div id="latest-post" class="post">
<p align="center"><strong><font size="5" color="#CC0000">DEATH REGISTRATION</font></strong></p>
<form action="insertdeath.jsp" name="f1" method="post" onsubmit="return val();">
  <table align="center" width="600" height="400" border="0">
  <tr> 
  <td class="new1"><strong><font size="4">Person Name:</font></strong></td>
  <td class="field"><input type="text" name="pnam"></td>
  </tr>
   <tr>
  <td class="new1"><strong><font size="4">Gender :</font></strong> </td>
  <td><input type="radio" name="gender" value="male">Male&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="female">Female
  &nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="NotKnown">NotKnown</td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Date Of Birth:</font></strong> </td>
  <td class="field"><input type="text" name="dob" ></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Date Of Death:</font></strong> </td>
  <td class="field"><input type="text" name="dod" ></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Place Of Death:</font></strong> </td>
  <td><input type="radio" name="pod" value="Home">Home&nbsp;&nbsp;&nbsp;<input type="radio" name="pod" value="Hospital">Hospital
  &nbsp;&nbsp;&nbsp;<input type="radio" name="pod" value="Other">Other&nbsp;&nbsp;&nbsp;<input type="radio" name="pod" value="NotKnown">NotKnown</td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Address : </font></strong></td>
  <td class="field"><textarea name="adrs" rows="5" cols="17"></textarea></td>
  </tr>
   <tr>
  <td class="new1"><strong><font size="4">Name Of Father Or Husband:</font></strong> </td>
  <td class="field"><input type="text" name="fatnm"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Name Of Mother :</font></strong> </td>
  <td class="field"><input type="text" name="motnm"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Ration Card No:</font></strong> </td>
  <td class="field"><input type="text" name="rcn"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Hospital(or)VAO Cerf No:</font></strong> </td>
  <td class="field"><input type="text" name="hcn"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Mobile No :</font></strong> </td>
  <td class="field"><input type="text" name="mobile"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">E-Mail ID :</font></strong> </td>
  <td class="field"><input type="text" name="mail"></td>
  </tr>
  <tr>
  <td></td>
	  <td><input type="submit" name="sub" value="Register" class="button">&nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="reset" name="reset" value="Clear" class="button"></td></tr>
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
