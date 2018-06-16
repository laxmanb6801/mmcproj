<%@ page language="java" import="java.sql.*,databaseconnection.*"  %>

<%
try
{
String rgn = request.getParameter("rcomno");
String fn = request.getParameter("fnam");
String age= request.getParameter("ag");
String gender = request.getParameter("gender");
String db = request.getParameter("dob");
String addr = request.getParameter("adrs");
String city = request.getParameter("cty");
String dis = request.getParameter("disc");
String state = request.getParameter("stat");
String pin = request.getParameter("pin");
String sal = request.getParameter("sal");
String mobile = request.getParameter("mobile");
String mail = request.getParameter("mail");
String emtyp = request.getParameter("etp");
String unam = request.getParameter("unm");
String pass = request.getParameter("pw");
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sss = "update admin set fullname='"+fn+"',age='"+age+"',gender='"+gender+"',dateofbirth='"+db+"',addr='"+addr+"',city='"+city+"',dis='"+dis+"',state='"+state+"',pin='"+pin+"',salary='"+sal+"',mobile='"+mobile+"',mail='"+mail+"',username='"+unam+"',pass='"+pass+"'where empid='"+rgn+"'"; 
int x = st.executeUpdate(sss);


if(x!=0)
{



%>
<jsp:forward page="adminviewadmin.jsp" />

<%}
}

catch(Exception e)
{
out.print(e);

}

%>