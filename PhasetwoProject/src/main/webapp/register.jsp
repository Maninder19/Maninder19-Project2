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
<form action="RegisterAction.jsp"method ="post">  
Enter Name:  <input type =text name="Full_Name"/><br><br>
Enter Address: <input type =text name="Address"/><br><br>
Enter Age: <input type =number name="Age"/><br><br>
Enter Mobile Number: <input type =number name="Number"/><br><br>
Enter Emailid: <input type =text name="Username"/><br><br>
Enter Country: <input type =text name="Country"/><br><br> 
Identity :<select name="TextField">
<option value="Adhar Card">Adhar Card</option>
<option value="SSN">SSN</option>
<option value="Passport">Passport</option>
<option value="VoterID">VoterID</option>
<option value="Driving License">Driving License</option>
</select><br><br>
<input type =text name="TextField"/><br><br>
<input type="submit" value="Register"/>" 
</form>  

</body>
</html>