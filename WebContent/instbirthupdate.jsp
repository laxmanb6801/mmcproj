<%@ page language="java" import="java.sql.*,databaseconnection.*"%>

<%
try
{
String cpno = request.getParameter("rcomno");
String chnm = request.getParameter("cnam");
String gen = request.getParameter("gender");
String dob = request.getParameter("dob");
String pob = request.getParameter("pob");
String adrs = request.getParameter("adrs");
String fnm = request.getParameter("fatnm");
String mnm = request.getParameter("motnm");
String rn = request.getParameter("rcn");
String hno = request.getParameter("hcn");
String mob = request.getParameter("mobile");
String mil = request.getParameter("mail");
String stus= "Action Taken";
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sss = "update birthreg set childname='"+chnm+"',gender='"+gen+"',dateofbirth='"+dob+"',placeofbirth='"+pob+"',address='"+adrs+"',fathername='"+fnm+"',mothername='"+mnm+"',rationcardno='"+rn+"',hospitalno='"+hno+"',mobileno='"+mob+"',mailid='"+mil+"',status='"+stus+"' where regidno='"+cpno+"'";
int x = st.executeUpdate(sss);
if(x!=0)
{
%>
<jsp:forward page="adminviewbirth.jsp"/>
<%
}
out.print("Please check your complaints Id No");
}
catch(Exception ex)
{
out.print(ex);
}
%>