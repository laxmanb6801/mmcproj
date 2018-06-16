<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Sarkar Muncipal Online Complaint Software </title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
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
		<li><a href="department1.jsp" accesskey="2" title="">Department</a></li>
		<li><a href="services1.jsp" accesskey="3" title="">Services</a></li>
		<li><a href="tender1.jsp" accesskey="4" title="">Tenders</a></li>
		<li><a href="gallery1a.jsp" accesskey="4" title="">Gallery</a></li>
		<li><a href="aboutus1.jsp" accesskey="4" title="">About Us</a></li>
		<li><a href="contactus1.jsp" accesskey="5" title="">Contact Us</a></li>
	</ul>-->
</div>
</div>
<hr/>
<div id="latest-post-wrap">
<div id="latest-post" class="post">
<p align="center"><font color="#FF0000" size="5"><strong>METRO WATER PETITIONS</strong></font></p>
<form action="#" name="f1" method="post" onsubmit="return val();">
  <table align="center" width="500" height="100" border="1" cellpadding="0" cellspacing="0">
  <tr> 
      <th width="75"><font color="#FF0000">Reg Id</font></th>
      <th width="100"> <font color="#FF00000">FullName</font></th>
      <th width="100"> <font color="#FF0000">Age</font></th>
      <th width="100"> <font color="#FF0000">Gender</font>
	  <th width="100"> <font color="#FF0000">BirthDate</font>
      <th width="100"> <font color="#FF0000">Address</font></th>
	  <th width="100"> <font color="#FF0000">City</font></th>
	  <th width="100"> <font color="#FF0000">Distric</font></th>
	  <th width="100"> <font color="#FF0000">State</font></th>
	  <th width="100"> <font color="#FF0000">Pin</font></th>
	  <th width="100"> <font color="#FF0000">Salary</font></th>
	  <th width="100"> <font color="#FF0000">Mobile</font></th>
	  <th width="100"> <font color="#FF0000">Mailid</font></th>
	  <th width="100"> <font color="#FF0000">Username</font></th>
	  <th width="100"> <font color="#FF0000">Password</font></th>
	  <th width="100"> <font color="#FF0000">Update</font></th>
    </tr>
  
  <%
  Connection con = null;
  PreparedStatement st = null;
  ResultSet rs = null;
  int a=0;
  String b = null,c = null,d = null,e = null,f=null,g=null,h=null,i=null,j=null,k=null,l=null,m=null,n=null,o=null;
  
  
	try
		{
		
        con = databasecon.getconnection();  
     //   st = con.createStatement();
		st = con.prepareStatement("select * from admin");
		rs = st.executeQuery();
		while(rs.next())
       	{
	   
	    
		   a=rs.getInt("empid");
		   b=rs.getString("fullname");
		   c=rs.getString("age");
		   d=rs.getString("gender");
		   e=rs.getString("dateofbirth");
		   f=rs.getString("addr");
		   g=rs.getString("city");
		   h=rs.getString("dis");
		   i=rs.getString("state");
		   j=rs.getString("pin");
		   k=rs.getString("salary");
		   l=rs.getString("mobile");
		   m=rs.getString("mail");
		   n=rs.getString("username");
		   o=rs.getString("pass");
		
	%>

    <tr> 
      <td> <%=a%> </td>
      <td> <%=b%> </td>
      <td> <%=c%> </td>
      <td> <%=d%> </td>
      <td> <%=e%> </td>
	  <td> <%=f%> </td>
	  <td> <%=g%> </td>
	  <td> <%=h%> </td>
	  <td> <%=i%> </td>
	  <td> <%=j%> </td>
	  <td> <%=k%> </td>
	  <td> <%=l%> </td>
	  <td> <%=m%> </td>
	  <td> <%=n%> </td>
	  <td> <%=o%> </td>
	  <%
      


%>
	   <td> <a href="updateadmin.jsp?<%=b%>">Update</a></td>
    </tr>
    <%
	   }
	  
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    %>
		
		</table>
		
		</form>
		
<p align="center"><a href="adminhome.jsp">BACK</a>&nbsp; <a href="#"></a>&nbsp; <a href="#"></a>&nbsp;  <a href="#"></a></p>
	<p class="meta"><a href="#" class="comments"></a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink"></a></p>
</div>
</div>
<div id="footer">
	<p class="legal"><strong><font size="4"><a href="index.html">www.municipalcorporation.com</a></font></strong></p>
	</div>
</body>
</html>
