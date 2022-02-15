<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/db_world";
String username = "root";
String password = "root";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>Name</td>
<td>Price</td>
<td>Flight_Number</td>
<td>Source_City</td>
<td>Destination_City</td>
<td>Departure_Time_from_Source</td>
<td>Arrivat_time_to_Destination</td>
<td>Total_Seats</td>
<td>Booked_Seats</td>
<td>Seats_Availibility</td>
<td>Date_of_Travel</td>
<td>Class</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl, username, password);
statement=connection.createStatement();
String sql ="select * from flight_details";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Name") %></td>
<td><%=resultSet.getString("Price") %></td>
<td><%=resultSet.getString("Flight_Number") %></td>
<td><%=resultSet.getString("Source_City") %></td>
<td><%=resultSet.getString("Destination_City") %></td>
<td><%=resultSet.getString("Departure_Time_from_Source") %></td>
<td><%=resultSet.getString("Arrivat_time_to_Destination") %></td>
<td><%=resultSet.getString("Total_Seats") %></td>
<td><%=resultSet.getString("Booked_Seats") %></td>
<td><%=resultSet.getString("Seats_Availibility") %></td>
<td><%=resultSet.getString("Date_of_Travel") %></td>
<td><%=resultSet.getString("Class") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
<a href="register.jsp">Confirm</a><br><br>