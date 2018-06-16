<%@ page  language="java" import="java.sql.*,java.text.SimpleDateFormat,java.util.*,java.io.*,databaseconnection.*" errorPage="" %>

<%
try{

   String name=null,mobile=null,addr=null,mail=null;
   Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();

//String name = (String) session.getValue("name");

   String s = "select * from regst where fullname='"+session.getValue("name")+"'";
   
   ResultSet rs = st.executeQuery(s);
   while(rs.next())
   {
   name=rs.getString(2);
   addr=rs.getString(6);
   mobile=rs.getString(13);
   mail=rs.getString(14);
   
   }
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
var a = document.f1.compl.value;
if(a=="")
{
alert("Enter your Complaints");
document.f1.compl.focus();
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
<p align="center"><font size="4"><strong>PETITION FORM</strong></font></p>
<form action="instsanicompl.jsp" name="f1" method="post" onsubmit="return val();">
<table width="120%" border="0">
  <tr> 
  <td><strong><font color="#000000" size="4">User Name:</font></strong></td>
  <td><input disabled="true" type="text" name="usrname" value="<%=name%>"></td>
  </tr>
  <tr>
  <td><strong><font color="#000000" size="4">Mail Id</font></strong></td>
  <td><input disabled="true" type="text" value="<%=mail%>" name="mid"></td>
  </tr>
  <tr> 
  <td><strong><font color="#000000" size="4">Mobile</font></strong></td>
  <td><input disabled="true" type="text" value="<%=mobile%>" name="mob"></td>
   </tr>
  <tr> 
  <td><strong><font color="#000000" size="4">Date</font></strong></td>
  <td><input disabled="true" type="text" value="<%=strDateNew%>" name="reqdat"></td>
   </tr>
   <tr> 
  <td><strong><font color="#000000" size="4">Address</font></strong></td>
  <td><input disabled="true" type="text" value="<%=addr%>" name="adrs"></td>
   </tr>
   <tr>
  <td><strong><font color="#000000" size="4">Complaints : </font></strong></td>
  <td><textarea name="compl" rows="5" cols="17"></textarea></td>
  </tr>
   <tr>
   <td></td>
  <td>
  <input type="submit" name="sub" value="Register" class="button"></td>
  </tr>
</table>
</form>
	<p align="center"><a href="sanitation2.jsp" class="comments">BACK</a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink"></a></p>
</div>
</div>
<div id="footer">
	<p class="legal"><strong><font size="4"><a href="index.html">www.municipalcorporation.com</a></font></strong></p>
	</div>
	<%
	}
	catch(Exception x)
   {
   System.out.println(x);
   }
   %>
</body>
</html>
