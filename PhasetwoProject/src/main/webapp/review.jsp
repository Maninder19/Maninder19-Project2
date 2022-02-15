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
<td>Full Name</td>
<td>Address</td>
<td>Age</td>
<td>Number</td>
<td>Username</td>
<td>TextField</td>
<td>Country</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl, username, password);
statement=connection.createStatement();
String sql ="select * from Register";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Full_Name") %></td>
<td><%=resultSet.getString("Address") %></td>
<td><%=resultSet.getString("Age") %></td>
<td><%=resultSet.getString("Number") %></td>
<td><%=resultSet.getString("Username") %></td>
<td><%=resultSet.getString("TextField") %></td>
<td><%=resultSet.getString("Country") %></td>
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
<a href="Confirm.jsp">Confirm</a><br><br>