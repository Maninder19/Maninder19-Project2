 <%@ page import ="com.control.Cprovider.ConnectionProvider" %>   
 <%@ page import ="java.sql.*" %>
<%
String Full_Name=request.getParameter("Full_Name");
String Address=request.getParameter("Address");
int Age=Integer.parseInt(request.getParameter("Age"));
String Number=request.getParameter("Number");
String Username=request.getParameter("Username");
String Identity=request.getParameter("TextField");
String Country=request.getParameter("Country");
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into Register values(?,?,?,?,?,?,?)");
	ps.setString(1,Full_Name);
	ps.setString(2,Address);
	ps.setInt(3,Age);
	ps.setString(4,Number);
	ps.setString(5,Username);
	ps.setString(6,Identity);
	ps.setString(7,Country);
	ps.executeUpdate();
		}
catch(Exception e)
{
	System.out.println(e);
	
}
%>