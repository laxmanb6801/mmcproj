<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
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
var z = document.f1.rcomno.value;
if(z=="")
{
alert("Enter Reg NO");
document.f1.rcomno.focus();
return false;
}
var a = document.f1.cnam.value;
if(a=="")
{
alert("Enter Child name");
document.f1.cnam.focus();
return false;
}

var y = document.f1.gender.value;
if(y=="")
{
alert("Enter Child name");
document.f1.gender.focus();
return false;
}
var b = document.f1.dob.value;
 var reDate = /(?:0[1-9]|[12][0-9]|3[01])\/(?:0[1-9]|1[0-2])\/(?:19|20\d{2})/;
 var b= reDate.test(b);
if(b==false)
{
alert("Enter your Date Of Birth in the format of dd/mm/yyyy");
document.f1.dob.focus();
return false;
}

var x = document.f1.pob.value;
if(x=="")
{
alert("Enter Child name");
document.f1.pob.focus();
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
alert("Enter The Father Name");
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
alert("Enter Hospital Certificate No");
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
<%
  
   String b=request.getQueryString();
	System.out.println(b);
   Connection con=null;
  PreparedStatement st = null;
  ResultSet rs1 = null;
 
  
  
	try
		{
		Class.forName("com.mysql.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","root");
        //con = databasecon.getconnection();  
     //   st = con.createStatement();
		st = con.prepareStatement("select * from birthreg where childname='"+b+"'");
		rs1 = st.executeQuery();
		while(rs1.next())
         {
		 %>
		 
<div id="latest-post-wrap">
<div id="latest-post" class="post">
<p align="center"><strong><font size="5" color="#CC0000">UPDATE BIRTH REGISTRATION</font></strong></p>
<form action="instbirthupdate.jsp" name="f1" method="post" onsubmit="return val();">
  <table align="center" width="600" height="400" border="0">
  <tr> 
  <td class="new1"><strong><font size="4">RegisterNo</font></strong></td>
  <td class="field"><input type="text" name="rcomno" value="<%=rs1.getInt(1)%>"></td>
  </tr>
  <tr> 
  <td class="new1"><strong><font size="4">Child Name:</font></strong></td>
  <td class="field"><input type="text" name="cnam" value="<%=rs1.getString(2)%>"></td>
  </tr>
   <tr>
  <td class="new1"><strong><font size="4">Gender :</font></strong> </td>
  <td><input type="text" name="gender" value="<%=rs1.getString(3)%>"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Date Of Birth:</font></strong> </td>
  <td class="field"><input type="text" name="dob" value="<%=rs1.getString(4)%>" ></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Place Of Birth:</font></strong> </td>
  <td><input type="text" name="pob" value="<%=rs1.getString(5)%>"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Address : </font></strong></td>
  <td class="field"><input type="text" name="adrs" value="<%=rs1.getString(6)%>"></td>
  </tr>
   <tr>
  <td class="new1"><strong><font size="4">Name Of Father:</font></strong> </td>
  <td class="field"><input type="text" name="fatnm" value="<%=rs1.getString(7)%>"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Name Of Mother :</font></strong> </td>
  <td class="field"><input type="text" name="motnm" value="<%=rs1.getString(8)%>"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Ration Card No:</font></strong> </td>
  <td class="field"><input type="text" name="rcn" value="<%=rs1.getString(9)%>"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Hostital Certificate No:</font></strong> </td>
  <td class="field"><input type="text" name="hcn" value="<%=rs1.getString(10)%>"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">Mobile No :</font></strong> </td>
  <td class="field"><input type="text" name="mobile" value="<%=rs1.getString(11)%>"></td>
  </tr>
  <tr>
  <td class="new1"><strong><font size="4">E-Mail ID :</font></strong> </td>
  <td class="field"><input type="text" name="mail" value="<%=rs1.getString(12)%>"></td>
  </tr>
  <tr>
  <td></td>
	  <td><input type="submit" name="sub" value="Update" class="button"></td></tr>
  </table>
 
 
  </form>
 
	<p align="center"><a href="#"class="comments"></a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink"></a></p>
</div>
</div>
 
<%
     
	   }
	  
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    %>
	
<div id="footer">
	<p class="legal"><strong><font size="4"><a href="index.html">www.municipalcorporation.com</a></font></strong></p>
	</div>
	
</body>
</html>
