package com.comtrol.dao;
import java.sql.*;

import com.control.Cprovider.ConnectionProvider;
import com.control.model.login;
public class logindao {
	  
	  
	public static boolean validate(login bean){  
	boolean status=false;  
	try{  
	Connection con=ConnectionProvider.getCon();  
	              
	PreparedStatement ps=con.prepareStatement("select * from LOGIN where Username=? and Password=?");  
	  
	ps.setString(1,bean.getUsername());  
	ps.setString(2, bean.getPassword());  
	              
	ResultSet rs=ps.executeQuery();  
	status=rs.next();  
	              
	}catch(Exception e){}  
	  
	return status;  
	  
	}  
	}  



