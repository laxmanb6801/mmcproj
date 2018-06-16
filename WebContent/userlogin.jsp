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
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/node","root","root");
	
	//Connection con;
   //con =  databasecon.getconnection();  
   Statement st = con.createStatement();
   String name = null;
   String lax= request.getParameter("user");
   String password= request.getParameter("pass");
     
   String s = "select * from regst where username='"+lax+"' and pass='"+password+"'";
   
   ResultSet rs = st.executeQuery(s);
   if(rs.next())
   {
   //session.putValue("regid",rs.getString(1));
   session.putValue("name",rs.getString(2));
   System.out.println(rs.getString(2));
   session.putValue("addr",rs.getString(6));
   session.putValue("mobile",rs.getString(13));
   session.putValue("mail",rs.getString(14));
   %>
   
   <jsp:forward page="services1.jsp"/>
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