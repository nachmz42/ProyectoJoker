<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Formulario</h1>
<form action="Login"  method="post">
<label for="email">Email:</label>
<input class="input" type="email"  name="email" required><br>
<label for="password">Password:</label>
<input class="input" type="password"  name="password" required><br>
<input type="submit" value="Login">
<span style="color: red"><%=(request.getAttribute("msgerr") == null) ? "" : request.getAttribute("msgerr") %></span>
</body>
</html>