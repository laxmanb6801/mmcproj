<%@ page language="java" import="java.sql.*,databaseconnection.*"%>

<%
try
{
String cpno = request.getParameter("rdd");
String pnam = request.getParameter("pnam");
String gen = request.getParameter("gender");
String dob = request.getParameter("dob");
String dod = request.getParameter("dod");
String pod = request.getParameter("pod");
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
String sss = "update deathreg set personname='"+pnam+"',gender='"+gen+"',dateofbirth='"+dob+"',dateofdeath='"+dod+"',address='"+adrs+"',fathername='"+fnm+"',mothername='"+mnm+"',rationcardno='"+rn+"',hospitalno='"+hno+"',mobileno='"+mob+"',mailid='"+mil+"',status='"+stus+"' where regidno='"+cpno+"'";
int x = st.executeUpdate(sss);
if(x!=0)
{
%>
<jsp:forward page="adminviewdeath.jsp"/>
<%
}
out.print("Please check your complaints Id No");
}
catch(Exception ex)
{
out.print(ex);
}
%>