<%@ page language="java" import="java.sql.*,databaseconnection.*"  %>

<%
try
{
String firstn = request.getParameter("firstn");
String last = request.getParameter("last");
String fullname = firstn+""+last;
String  age= request.getParameter("age");
String gender = request.getParameter("gender");
String addr= request.getParameter("addr");
String city= request.getParameter("city");
String dis= request.getParameter("dis");
String state= request.getParameter("state");
String pin= request.getParameter("pin");
String sal= request.getParameter("slry");
String mobile= request.getParameter("mobile");
String mail= request.getParameter("mail");
String emptp= request.getParameter("emptyp");
String username= request.getParameter("username");
String pass= request.getParameter("pass");
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sss = "insert into empdetl(fullname,age,gender,addr,city,dis,state,pin,salary,mobile,mail,emptyp,username,pass) values('"+fullname+"','"+age+"','"+gender+"','"+addr+"','"+city+"','"+dis+"','"+state+"','"+pin+"','"+sal+"','"+mobile+"','"+mail+"','"+emptp+"','"+username+"','"+pass+"')";
int x = st.executeUpdate(sss);


if(x!=0)
{
%>
<jsp:forward page="officerslog.jsp" />
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