<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
</head>
<body>
	<%
	String name=request.getParameter("name");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql:///abslink?serverTimezone=Asia/Shanghai","root","627475");
	PreparedStatement statementAdd=connection.prepareStatement("insert into name values(null,?)");
	statementAdd.setString(1, name);
	statementAdd.execute();
	out.println("注册成功");
	%>
</body>
</html>