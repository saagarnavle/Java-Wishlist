<%-- 
    Document   : additem
    Created on : 30 Oct, 2017, 10:50:54 PM
    Author     : Priyanka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String userid =(String)session.getAttribute("userid");
//out.println(userid);
String item=request.getParameter("item"); 
String desc=request.getParameter("desc"); 
String date=request.getParameter("date"); 
 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root",""); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into wishes() values ('"+userid+"','"+item+"','"+desc+"','"+date+"')"); 
response.sendRedirect("homepage.jsp");
%>
