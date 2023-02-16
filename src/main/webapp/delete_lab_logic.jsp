<%@page import="jakarta.security.auth.message.callback.SecretKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.PreparedStatement, java.sql.Connection, java.sql.DriverManager"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Lab Logic | Admin</title>


</head>
<body>

	<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3307/bisag" user="root" password="root" />
	<sql:update dataSource="${con}" var="rs">  
		Delete from lab where lab=? 
		<sql:param value="${param.ln}"></sql:param>
	 </sql:update>

<%RequestDispatcher rd1 = request.getRequestDispatcher("view.jsp");
rd1.include(request, response); %>

</body>
</html>