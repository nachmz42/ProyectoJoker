<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="STYLE/css/login.css"></link>
</head>
<body >
<div class= "testbox">
<h1> Login</h1>
<form action="Login"  method="post">
<div class="form2" style="">
<label for="email">Email:</label><br>
<input class="input" type="email"  name="email" placeholder="email"required><br>
<label for="password">Password:</label><br>
<input class="input" type="text"  name="password"  placeholder="Password.."required><br>
<input type="submit" value="Login">
<span style="color: red"><%=(request.getAttribute("msgerr") == null) ? "" : request.getAttribute("msgerr") %></span><br>
<a href="registro.jsp">Registrarse</a><br>
</div>

</form>
</div>


</body>
</html>