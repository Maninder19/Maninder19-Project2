package com.control.Cprovider;
import java.sql.*;
import com.control.model.*;
import com.control.connection.*;

public class ConnectionProvider {
	
	public static Connection getCon(){

	try{  
	Class.forName("com.mysql.cj.jdbc.Driver");  
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_world?useUnicode=yes&characterEncoding=UTF-8","root","root"); 
	
	}catch(Exception e)
		{
		System.out.print(e);
		return getCon(); 
		}  
	}  
	  
	  
	     
	}  
	  
	


