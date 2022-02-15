<%@ page import ="com.control.Cprovider.ConnectionProvider" %>   
 <%@ page import ="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" %>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="com.comtrol.dao.logindao"%> 
<jsp:useBean id="obj" class="com.control.model.login"/>
<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
String connurl = "jdbc:mysql://localhost:3306/db_world";
Connection con=null;
String pass="";
String Username="";
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from LOGIN where Password='"+currentPassword+"'");
while(rs.next()){
Username=rs.getString(1);
pass=rs.getString(2);
} System.out.println(Username+ " "+pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update LOGIN set password='"+Newpass+"' where Username='"+Username+"'");
out.println("Password changed successfully");
st1.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>
</body>
</html>