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
<p align="center"><font color="#FF0000" size="5"><strong>TENDER DETAIL</strong></font></p>
<form action="#" name="f1" method="post" onsubmit="return val();">
  <table width="600" height="120" border="1" cellpadding="5" cellspacing="0">
  <tr> 
      <th width="75"> <font color="#FF0000">Reg Id</font></th>
      <th width="150"> <font color="#FF00000">Tender code</font></th>
      <th width="150"> <font color="#FF0000">Tender Detail</font></th>
      <th width="100"> <font color="#FF0000">Posted Date</font>
      <th width="100"> <font color="#FF0000">Closing Date</font></th>
	  <th width="100"> <font color="#FF0000">Max Amount</font></th>
	  <th width="100"> <font color="#FF0000">Min Amount</font></th>
    </tr>
  
  <%
  Connection con = null;
  PreparedStatement st = null;
  ResultSet rs = null;
  int a=0;
  String  b = null,c = null,d = null,e = null,f=null,g=null;
  
  
	try
		{
		Class.forName("com.mysql.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","root");
        //con = databasecon.getconnection();  
     //   st = con.createStatement();
		st = con.prepareStatement("select * from tender");
		rs = st.executeQuery();
		while(rs.next())
       	{
	   
	    
		   a=rs.getInt("serno");
		   b=rs.getString("tendercode");
		   c=rs.getString("tenderdeatil");
		   d=rs.getString("posteddate");
		   e=rs.getString("closingdate");
		   f=rs.getString("maxamount");
		   g=rs.getString("minamount"); 
	%>

    <tr> 
      <td> <%=a%> </td>
      <td> <%=b%> </td>
      <td> <%=c%> </td>
      <td> <%=d%> </td>
      <td> <%=e%> </td>
	  <td> <%=f%> </td>
	  <td> <%=g%> </td>
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
		
<p align="center"><a href="services1.jsp">BACK</a>&nbsp; <a href="#"></a>&nbsp; <a href="#"></a>&nbsp;  <a href="#"></a></p>
	<p class="meta"><a href="#" class="comments"></a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink"></a></p>
</div>
</div>
<div id="footer">
	<p class="legal"><strong><font size="4"><a href="index.html">www.municipalcorporation.com</a></font></strong></p>
	</div>
</body>
</html>