<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

String item=request.getParameter("item"); 
String desc=request.getParameter("desc");
String date=request.getParameter("date");
 try{
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root",""); 
String sql = "update wishes set item=?,description=?,due_date=? where item='"+item+"'";
PreparedStatement ps = con.prepareStatement(sql);

ps.setString(1,item);
ps.setString(2, desc);
ps.setString(3,date);
int i = ps.executeUpdate();
if(i > 0)
{
    response.sendRedirect("view.jsp");
}
 }
 catch(Exception e){}
%>
