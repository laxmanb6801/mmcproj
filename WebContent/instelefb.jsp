<%@ page language="java" import="java.sql.*,databaseconnection.*"%>

<%
try
{
//String nam = (String)session.getAttribute("uname");
//String mob = (String)session.getAttribute("mob");
String cpno = request.getParameter("compno");
String stus= "Action Taken";
String fb = request.getParameter("fedbk");
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sss = "update electcompl set status='"+stus+"',feedback='"+fb+"' where elecomno='"+cpno+"'";
int x = st.executeUpdate(sss);
if(x!=0)
{
%>
<jsp:forward page="electy1.jsp"/>
<%
}
out.print("Please check your complaints Id No");
}
catch(Exception ex)
{
out.print(ex);
}
%>