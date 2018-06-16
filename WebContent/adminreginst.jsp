<%@ page language="java" import="java.sql.*,databaseconnection.*"  %>

<%
try
{
String firstn = request.getParameter("firstn");
String last = request.getParameter("last");
String fullname = firstn+""+last;
String  age= request.getParameter("age");
String gender = request.getParameter("gender");
String dob= request.getParameter("dob");
String addr= request.getParameter("addr");
String city= request.getParameter("city");
String dis= request.getParameter("dis");
String state= request.getParameter("state");
String pin= request.getParameter("pin");
String sly = request.getParameter("sal");
String mobile= request.getParameter("mobile");
String mail= request.getParameter("mail");
String username= request.getParameter("username");
String pass= request.getParameter("pass");
String type= "admin";
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sss = "insert into admin(fullname,age,gender,dateofbirth,addr,city,dis,state,pin,salary,mobile,mail,username,pass,usertype) values('"+fullname+"','"+age+"','"+gender+"','"+dob+"','"+addr+"','"+city+"','"+dis+"','"+state+"','"+pin+"','"+sly+"','"+mobile+"','"+mail+"','"+username+"','"+pass+"','"+type+"')";
int x = st.executeUpdate(sss);


if(x!=0)
{
session.putValue("username",username);
session.putValue("pass",pass);
session.putValue("first",firstn);
session.putValue("last",last);


%>
<jsp:forward page="adminlog.jsp" />
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