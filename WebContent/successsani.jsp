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
   String reqdate = (String) session.getAttribute("reqdate"); 
   String s = "select * from sanitatcompl where date='"+session.getAttribute("reqdate")+"'";
   
   ResultSet rs = st.executeQuery(s);
   if(rs.next())
   {
   session.putValue("id",rs.getString(1));
   session.putValue("name2",rs.getString(2));
   
   %>
   
   <jsp:forward page="success.jsp"/>
   
   <%
   
   }
   
   }
   
   catch(Exception x)
   {
   System.out.println(x);
   }
   %>
   </form>
       </body> 	
</html>