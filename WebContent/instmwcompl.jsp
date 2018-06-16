<%@ page language="java" import="java.sql.*,databaseconnection.*"%>

<%
try
{
String nam = (String)session.getAttribute("name");
String mid = (String)session.getAttribute("mail");
String mob = (String)session.getAttribute("mobile");
String dat = (String)session.getAttribute("reqdate");
String adrs = (String)session.getAttribute("addr");
String compl = request.getParameter("compl");
String status= "processing";
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sss = "insert into mwatcompl(username,mailid,mobile,date,address,complaints,status) values('"+nam+"','"+mid+"','"+mob+"','"+dat+"','"+adrs+"','"+compl+"','"+status+"')";
int x = st.executeUpdate(sss);
if(x!=0)
{
%>
<jsp:forward page="successmw.jsp"/>
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