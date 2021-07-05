<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="STYLE/css/login.css"></link>
<link rel="stylesheet" href="STYLE/css/login.js"></link>
</head>
<<<<<<< HEAD
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
<a style="text-decoration:none; color:black" href="registro.jsp">Registrarse</a><br>
</div>
=======
<body>
>>>>>>> refs/remotes/origin/main

	<form>
		<div class="login">
			<header class="container">
				<h2>Log In</h2>
			</header>
			<br>
			<div class="field-set">
				<input class="usuario" id="txt-input" type="text"
					placeholder="Username" required> <br> 
				<input class="usuario" id="txt-input" type="password" placeholder="Password" id="pwd"
					name="password" required> <br>
				<button class="btn submits sign-up">Login</button>
			<div class="other">
				<button class="btn submits registro"><%=(request.getAttribute("msgerr") == null) ? "" : request.getAttribute("msgerr")%><a href="registro.jsp">Registrarse</a></button>
			</div>
			</div>
			</div>
	</form>


</body>
</html>