<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
try{

   String stnam=null,stmob=null,status=null;
   Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
	String name = (String) session.getValue("name");
	System.out.println(name);
   String s = "select * from electcompl where username='"+session.getValue("name")+"'";
   
   ResultSet rs = st.executeQuery(s);
   while(rs.next())
   {
   
    //System.out.println(id3);
    //session.setAttribute("id3",id3);
   stnam=rs.getString(2);
   session.setAttribute("stnam",stnam);
   System.out.println(stnam);
   stmob=rs.getString(4);
   session.setAttribute("stmob",stmob);
   System.out.println(stmob);
   status=rs.getString(8);
   session.setAttribute("status",status);
   
   }
 	response.sendRedirect("statusele.jsp");

	}
	catch(Exception x)
   {
   System.out.println(x);
   }
   %>