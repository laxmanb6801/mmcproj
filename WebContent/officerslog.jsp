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
if(document.f1.emptyp.selectedIndex==0)
{
alert("Select Employee type");
return false;
}

}
</script>
</head>
<body>


<form name="f1" action="officerslogin.jsp" method="post" onSubmit="return validation();">





<div id="header">
<div id="logo">
	<h1><a href="#"> </a></h1>
	<p><img src="images/muncipal4.jpg" width="800" height="115" align="left"/></p>
  </div>
</div>






<div id="menu-wrapz">
<div id="menuz">
<h class="byline"><strong><marquee behavior="scroll" direction="left" bgcolor="#000000" ><font color="#00FF00" size="5">Sarkar Muncipal Online Complaint Software </font></marquee></strong></h>
</div>
</div>
<div id="menu-wrap">
<div id="menu">&nbsp;&nbsp;&nbsp;&nbsp;
	<ul>
		<li class="first"><a href="index.html" accesskey="1" title="">Homepage</a></li>
		<li><a href="department.jsp" accesskey="2" title="">Department</a></li>
		<li><a href="services.jsp" accesskey="3" title="">Services</a></li>
		<li><a href="tender.jsp" accesskey="4" title="">Tenders</a></li>
		<li><a href="gallery.jsp" accesskey="4" title="">Gallery</a></li>
		<li><a href="aboutus.jsp" accesskey="4" title="">About Us</a></li>
		<li><a href="contactus.jsp" accesskey="5" title="">Contact Us</a></li>
	</ul>
</div>
</div>
<hr/>



<div id="latest-post-wrap">
<div id="latest-post" class="post">
<p class="byline"><strong><a href="#"></a></strong></p>
<P align="center"><font size="6">OFFICERS LOGIN</font></P>



<table width="120%" border="0">
  <tr>
    <td><img src="images/offc2.jpg" /></td>
    <td><p><font color="#A71B1B" size="3"><strong>UserName </strong></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  style="background-color:#FFFFFF;" name="user"></p> 
	&nbsp;<p><font color="#A71B1B" size="3"><strong>PassWord </strong></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password"  style="background-color:#FFFFFF;" name="pass"></p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<P><font color="#A71B1B" size="3"><strong>Employee Type</strong></font>
  <select name="emptyp">
  <option selected value>--type--</option>
  <option>Officers</option>
  <option>Metro Water Emp</option>
  <option>Sanitation Dept Emp</option>
  </select></P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit"  name="sub" value="Submit" style="background-color:#FFFFFF;" >&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="reset" name="clr" value="Clear" style="background-color:#FFFFFF;"></p>
	</td>
  </tr>
</table>

	<p class="meta"><a href="#" class="comments"></a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink"></a></p>
</div>
</div>
<div id="footer">
	<p class="legal"><strong><font size="4"><a href="index.html">www.municipalcorporation.com</a></font></strong></p>
	</div>
	</form>
</body>
</html>
