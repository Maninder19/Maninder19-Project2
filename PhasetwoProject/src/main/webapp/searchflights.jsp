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
Enter Date: <input type="date"id="flightd">
Enter Source City: <input type="text" id=Scity><br>
Enter Destination City: <input type="text" id=Dcity><br>
Enter number of persons:<input type="number" id="num">
<a href="flightpage.jsp">Flight Details</a><br><br>

</body>
</html>