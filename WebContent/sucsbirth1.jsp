<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
    <head>
	<title>MUNICIPAL CORP SUCCESS PAGE</title>
    </head>
    <body>
	<form>
<%
try
{
  Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement(); 
   //String name1 = (String) session.getValue("name");
   //String chnm1 = (String) session.getAttribute("chnm"); 
   String s = "select * from birthreg where reqdate='"+session.getAttribute("reqdate")+"'";
   
   ResultSet rs = st.executeQuery(s);
   if(rs.next())
   {
	   session.putValue("name",rs.getString(1));
   session.putValue("idbd",rs.getString(2));
   
  }
      response.sendRedirect("sucsbirth.jsp");
   }
   
   catch(Exception x)
   {
   System.out.println(x);
   }
   %>
   </form>
       </body> 	
</html>