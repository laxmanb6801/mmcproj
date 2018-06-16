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
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
   String name = null;
   String username= request.getParameter("user");
   String password= request.getParameter("pass");
   String emtyp= request.getParameter("emptyp");
     
   String s = "select * from empdetl where username='"+username+"' and pass='"+password+"' and emptyp='"+emtyp+"'";
   
   ResultSet rs = st.executeQuery(s);
   if(rs.next())
   {
   session.putValue("name",rs.getString(2));
   if(emtyp.equals("Officers"))
   {
   %>
   
   <jsp:forward page="officerpage.jsp"/>
   
   <%
   }
   if(emtyp.equals("Metro Water Emp"))
   {
   %> 
   
   <jsp:forward page="viewmetwat.jsp"/>
   
   <%
   }
   if(emtyp.equals("Education Dept Emp"))
   {
   %>
   
   <jsp:forward page="vieweducat.jsp"/>
   
   <%
   }
   if(emtyp.equals("Electricity Dept Emp"))
   {
   %>
   
   <jsp:forward page="viewelecty.jsp"/>
   
   <%
   }
   if(emtyp.equals("Sanitation Dept Emp"))
   {
   %>
   
   <jsp:forward page="viewsanitation.jsp"/>
   
   <%
   }
   }
   else
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