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
var a = document.f1.pname.value;
if(a=="")
{
alert("Enter first name");
document.f1.pname.focus();
return false;
}
var b = document.f1.rgno.value;
if(b=="")
{
alert("Enter Reg No");
document.f1.rgno.focus();
return false;
}
if(isNaN(b))
{
alert("Enter Reg No in numbers");
document.f1.rgno.focus();
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
<div id="latest-post" class="post">&nbsp;&nbsp;
<p align="center"><font size="4"><strong>COMPLAINT STATUS FORM</strong></font></p>
<form action="statusdeath1.jsp" name="f1" method="post" onsubmit="return val();">
<table width="120%" border="0">
  
  <tr>
  <td><strong><font color="#000000" size="4">Person Name:</font></strong></td>
  <td><input type="text" name="pname"></td>
  </tr>
  <tr> 
  <td><strong><font color="#000000" size="4">Reg no:</font></strong></td>
  <td><input type="text" name="rgno"></td>
   </tr>
   <tr>
   <td></td>
  <td>
  <input type="submit" name="sub" value="Submit" class="button"></td>
  </tr>
</table>
</form>

	<p align="center"><a href="services1.jsp" class="comments">BACK</a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink"></a></p>
</div>
</div>
<div id="footer">
	<p class="legal"><strong><font size="4"><a href="index.html">www.municipalcorporation.com</a></font></strong></p>
	</div>
	
</body>
</html>