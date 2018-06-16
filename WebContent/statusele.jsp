<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
try{
   int id3=0;
   Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
	String stnam = (String) session.getAttribute("stnam");
	String stmob = (String) session.getAttribute("stmob");
	//System.out.println(name);
   String s = "select * from electcompl where username='"+session.getAttribute("stnam")+"'";
   ResultSet rs = st.executeQuery(s);
   
 
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
if(document.f1.selid.selectedIndex==0)
{
alert("Select Complaints No");
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
<form action="statussuccess.jsp" name="f1" method="post" onsubmit="return val();">
<table width="120%" border="0">
  
  <tr>
  <td><strong><font color="#000000" size="4">User Name:</font></strong></td>
  <td><input disabled="true" type="text" value="<%=stnam%>" name="uname"></td>
  </tr>
  <tr> 
  <td><strong><font color="#000000" size="4">Mobile</font></strong></td>
  <td><input disabled="true" type="text" value="<%=stmob%>" name="mob"></td>
   </tr>
   <tr> 
  <td><strong><font color="#000000" size="4">Select Complaints No</font></strong></td>
  <td><select name="selid">
  <option value="--Select--">--Select--</option>
  <%
			while(rs.next())
           {
         id3=rs.getInt(1);
         System.out.println(id3);
         //session.setAttribute("id3",id3);
   
			%>
			<option value="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></option>
			<%
			}
			%>
			
			
			</select></td>
  </tr>
   <tr>
   <td></td>
  <td>
  <input type="submit" name="sub" value="Submit" class="button"></td>
  </tr>
</table>


	<p align="center"><a href="#" class="comments"></a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink"></a></p>
</div>
</div>
<div id="footer">
	<p class="legal"><strong><font size="4"><a href="index.html">www.municipalcorporation.com</a></font></strong></p>
	</div>
	</form>
	<%
	}
	catch(Exception x)
   {
   System.out.println(x);
   }
   %>
</body>
</html>

