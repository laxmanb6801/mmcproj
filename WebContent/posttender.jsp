<%@ page  language="java" import="java.sql.*,java.text.SimpleDateFormat,java.util.*,java.io.*,databaseconnection.*" errorPage="" %>
<%
java.util.Date now = new java.util.Date();
   
	 String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;
     session.setAttribute("reqdate",strDateNew); 

%>
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
var a = document.f1.tcod.value;
if(a=="")
{
alert("Enter Tender Code");
document.f1.tcod.focus();
return false;
}
var b = document.f1.tedetl.value;
if(b=="")
{
alert("Enter last name");
document.f1.tedetl.focus();
return false;
}
 var c = document.f1.cdat.value;
 var reDate = /(?:0[1-9]|[12][0-9]|3[01])\/(?:0[1-9]|1[0-2])\/(?:19|20\d{2})/;
 var c= reDate.test(c);
if(c==false)
{
alert("Enter your Closing Date in the format of dd/mm/yyyy");
document.f1.dob.focus();
return false;
}
var i = document.f1.hamo.value;
if(i=="")
{
alert("Enter pincode");
document.f1.hamo.focus();
return false;
}
if(isNaN(i))
{
alert("Enter pincode in numbers");
document.f1.hamo.focus();
return false;
}

var j = document.f1.lamo.value;
if(j=="")
{
alert("Enter pincode");
document.f1.lamo.focus();
return false;
}
if(isNaN(j))
{
alert("Enter pincode in numbers");
document.f1.lamo.focus();
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
<p align="center"><strong><font size="5" color="#CC0000">UPLOAD A TENDER</font></strong></p>
<form action="insertptdr.jsp" name="f1" method="post" onsubmit="return val();">
  <table align="center" width="600" height="250" border="0">
        <tr> 
          <td class="new1"><strong><font size="4">Tender Code:</font></strong></td>
  <td class="field"><input type="text" name="tcod"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Tender Detail:</font></strong> </td>
  <td class="field"><input type="text" name="tedetl"></td>
  </tr>
   <tr>
  <td class="new1"><strong><font size="4">Closing Date:</font></strong> </td>
  <td><input type="text" name="cdat"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Max Amount:</font></strong> </td>
  <td class="field"><input type="text" name="hamo" ></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Min Amount: </font></strong></td>
  <td class="field"><input type="text" name="lamo" ></td>
  </tr>
   
  <tr>
  <td></td>
	  <td><input type="submit" name="sub" value="Upload" class="button"></td>
	  </tr>
 
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
