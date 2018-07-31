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
String user = request.getParameter("user1");
String pwd=request.getParameter("pwd"); 
String fname=request.getParameter("fname"); 
String lname=request.getParameter("lname");
String mail=request.getParameter("mail");

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root",""); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into login(user,pass,fname,lname,email) values ('"+user+"','"+pwd+"','"+fname+"','"+lname+"','"+mail+"')"); 

response.sendRedirect("index.html");
%>
