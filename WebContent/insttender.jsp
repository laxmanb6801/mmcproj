<%@ page language="java" import="java.sql.*,databaseconnection.*"%>

<%
try
{
String nam = (String)session.getAttribute("name");
String mid = (String)session.getAttribute("mail");
String mob = (String)session.getAttribute("mobile");
String dat = (String)session.getAttribute("reqdate");
String adrs = (String)session.getAttribute("addr");
String tcd = request.getParameter("tcod");
String tdl = request.getParameter("tdtl");
String tat = request.getParameter("tamt");
String cln = request.getParameter("clno");
String status= "processing";
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sss = "insert into applytender(username,mailid,mobile,date,address,tendercode,tenderdetaile,tenderamount,licenseno,status) values('"+nam+"','"+mid+"','"+mob+"','"+dat+"','"+adrs+"','"+tcd+"','"+tdl+"','"+tat+"','"+cln+"','"+status+"')";
int x = st.executeUpdate(sss);
if(x!=0)
{
%>
<jsp:forward page="succestender.jsp"/>
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