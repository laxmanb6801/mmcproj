<%@ page  language="java" import="java.sql.*,java.text.SimpleDateFormat,java.util.*,java.io.*,databaseconnection.*" errorPage="" %>

<%
java.util.Date now = new java.util.Date();
   
	 String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;
     session.setAttribute("reqdate",strDateNew);
try
{
String prnm = request.getParameter("pnam");
String gender = request.getParameter("gender");
String db= request.getParameter("dob");
String dd= request.getParameter("dod");
String pd= request.getParameter("pod");
String ads= request.getParameter("adrs");
String fn= request.getParameter("fatnm");
String mn= request.getParameter("motnm");
String rcn= request.getParameter("rcn");
String hcn= request.getParameter("hcn");
String mobn= request.getParameter("mobile");
String mil = request.getParameter("mail");
String status= "processing";
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sss = "insert into deathreg(personname,gender,dateofbirth,dateofdeath,placeofdeath,address,fathername,mothername,rationcardno,hospitalno,mobileno,mailid,status,reqdate) values('"+prnm+"','"+gender+"','"+db+"','"+dd+"','"+pd+"','"+ads+"','"+fn+"','"+mn+"','"+rcn+"','"+hcn+"','"+mobn+"','"+mil+"','"+status+"','"+strDateNew+"')";
int x = st.executeUpdate(sss);
if(x!=0)
{
%>
<jsp:forward page="sucsdeath1.jsp" />
<%
}
else
{
%>
<jsp:forward page="index.html"/>
<%}
}

catch(Exception e)
{
out.print(e);

}

%>