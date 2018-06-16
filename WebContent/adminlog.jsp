<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Sarkar Muncipal Online Complaint Software </title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script language="JavaScript">
function validation()
{
var a = document.f1.user.value;
var b = document.f1.pass.value;

if(a=="")
{
alert("Enter your User Name");
document.f1.user.focus();
return false;
}
if(b=="")
{
alert("Enter your Password");
document.f1.pass.focus();
return false;
}
}
</script>
</head>
<body>
<form name="f1" action="adminlogin.jsp" method="post" onSubmit="return validation();">
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
		<li><a href="services.jsp" accesskey="3" title="">Services</a></li>
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
<p class="byline"><strong><a href="#"></a></strong></p>
<P align="center"><font size="6">ADMIN LOGIN</font></P>
<table width="120%" border="0">
  <tr>
    <td><img src="images/admin.jpg" /></td>
    <td><p><font color="#A71B1B" size="3"><strong>UserName </strong></font><input type="text"  style="background-color:#FFFFFF;" name="user"></p> 
	&nbsp;&nbsp;&nbsp;&nbsp;<p>&nbsp;<font color="#A71B1B" size="3"><strong>PassWord </strong></font><input type="password"  style="background-color:#FFFFFF;" name="pass"></p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit"  name="sub" value="Submit" style="background-color:#FFFFFF;" >&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="reset" name="clr" value="Clear" style="background-color:#FFFFFF;"></p>
	</td>
  </tr>
</table>

	<p class="meta"><a href="#" class="comments"></a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink"></a></p>
</div>
</div>
<div id="footer">
	<p class="legal"><strong><font size="4"><a href="index.html">Copy right @2016</a></font></strong></p>
	</div>
	</form>
</body>
</html>
