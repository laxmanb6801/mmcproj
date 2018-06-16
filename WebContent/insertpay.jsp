<%@ page language="java" import="java.sql.*,databaseconnection.*"%>

<%
try
{
String nam = (String)session.getAttribute("name");
String mid = (String)session.getAttribute("mail");
String mob = (String)session.getAttribute("mobile");
String dat = (String)session.getAttribute("reqdate");
String adrs = (String)session.getAttribute("addr");
String tx = request.getParameter("tax");
String rst = request.getParameter("rs");
String amt = request.getParameter("amount");
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sss = "insert into onlinepay(username,mailid,mobile,date,address,taxfor,rsfor,amount) values('"+nam+"','"+mid+"','"+mob+"','"+dat+"','"+adrs+"','"+tx+"','"+rst+"','"+amt+"')";
int x = st.executeUpdate(sss);
if(x!=0)
{
%>
<jsp:forward page="successtax.jsp"/>
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