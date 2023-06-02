<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout | SoftLib</title>
</head>
<body>
	<%
	session.invalidate();
	%>
</body>
<script>
    alert("You are SuccessFully logged out.");
</script>
</html>

<%
	response.sendRedirect("/Software/");  
%>