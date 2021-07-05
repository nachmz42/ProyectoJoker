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
<body>

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