<%@ page language="java" import="java.sql.*,databaseconnection.*"%>

<%
try
{
String tcd = request.getParameter("tcod");
String tdtl = request.getParameter("tedetl");
String rdat = (String)session.getAttribute("reqdate");
String cdt = request.getParameter("cdat");
String ham = request.getParameter("hamo");
String lam = request.getParameter("lamo");
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sss = "insert into tender(tendercode,tenderdeatil,posteddate,closingdate,maxamount,minamount) values('"+tcd+"','"+tdtl+"','"+rdat+"','"+cdt+"','"+ham+"','"+lam+"')";
int x = st.executeUpdate(sss);
if(x!=0)
{
%>
<jsp:forward page="officerpage.jsp"/>
<%
}
else
{
%>
<jsp:forward page="index.html"/>
<%
}
}
catch(Exception ex)
{
out.print(ex);
}
%>