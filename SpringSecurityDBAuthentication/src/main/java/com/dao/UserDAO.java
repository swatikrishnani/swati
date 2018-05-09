package com.dao;

import java.sql.*;  
public class UserDAO{  
public static void connection(String Employee_ID){
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/checklist","root","root");  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select r.Role_Description from users u, role r where u.Role_ID= r.Role_ID and u.Employee_ID=?"); 
while(rs.next())  
System.out.println(rs.getString(1));  
con.close();  
}catch(Exception e){ System.out.println(e);}  
}  
}  