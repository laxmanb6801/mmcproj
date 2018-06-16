<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
    <head>
	<title>JSP New admin page</title>
    </head>
    <body>
	<form>
<%
try
{
  Connection con;
  Statement stmt=null;
   con =  databasecon.getconnection();  
    stmt = con.createStatement();
   String name = null;
   String username= request.getParameter("user");
   String password= request.getParameter("pass");
     
   String s = "select * from admin where username='"+username+"' and pass='"+password+"'";
   
   ResultSet rs = stmt.executeQuery(s);
   if(rs.next())
   {
   session.putValue("name",rs.getString(2));
   
   %>
   
   <jsp:forward page="adminhome.jsp"/>
   
   <%
   
   }
   out.print("Please check your login credentials");
   }
   
   catch(Exception x)
   {
   System.out.println(x);
   }
   %>
   </form>
       </body> 	
</html>