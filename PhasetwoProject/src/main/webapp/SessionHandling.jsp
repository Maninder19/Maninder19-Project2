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
<form action="loginprocess.jsp"method ="post">  
Email:<input type="text" name="Username"/><br/><br/>  
Password:<input type="Password" name="Password"/><br/><br/>  
<input type="submit" value="login"/> 
</form>  

</body>
</html>