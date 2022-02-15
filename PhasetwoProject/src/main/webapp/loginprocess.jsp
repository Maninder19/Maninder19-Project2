<%@ page import ="java.sql.*" %>
<%
    try{
        String Username = request.getParameter("Username");   
        String Password = request.getParameter("Password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_world?","root","root");    
        PreparedStatement pst = conn.prepareStatement("Select Username,Password from login where Username=? and Password=?");
        pst.setString(1, Username);
        pst.setString(2, Password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
           out.println("Valid login credentials");        
        else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>

