<%@ page language="java" import="java.sql.*,databaseconnection.*"  %>

<%
try
{
String firstn = request.getParameter("firstn");
String last = request.getParameter("last");
String fullname = firstn+""+last;
String  age= request.getParameter("age");
String gender = request.getParameter("gender");
String occ= request.getParameter("occ");
String addr= request.getParameter("addr");
String city= request.getParameter("city");
String dis= request.getParameter("dis");
String state= request.getParameter("state");
String pin= request.getParameter("pin");
String id= request.getParameter("id");
String num = request.getParameter("num");
String mobile= request.getParameter("mobile");
String mail= request.getParameter("mail");
String username= request.getParameter("username");
String pass= request.getParameter("pass");
String cpass= request.getParameter("cpass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/node","root","root");
//Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sss = "insert into regst(fullname,age,gender,occ,addr,city,dis,state,pin,id,num,mobile,mail,username,pass,cpass) values('"+fullname+"','"+age+"','"+gender+"','"+occ+"','"+addr+"','"+city+"','"+dis+"','"+state+"','"+pin+"','"+id+"','"+num+"','"+mobile+"','"+mail+"','"+username+"','"+pass+"','"+cpass+"')";
int x = st.executeUpdate(sss);


if(x!=0)
{



%>
<jsp:forward page="index.html" />
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