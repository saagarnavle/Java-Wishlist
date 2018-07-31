<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String userid=request.getParameter("user"); 
//session.putValue("userid",userid);
session.setAttribute("userid",userid);
String pwd=request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root",""); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from login where user='"+userid+"'"); 
if(rs.next()) 
{ 

out.println("welcome"+userid); 
response.sendRedirect("homepage.jsp");
}
else 
{ 
out.println("Invalid password try again"); 
}  
%>

