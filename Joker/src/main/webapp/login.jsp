<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="STYLE/css/login.css"></link>
</head>
<<<<<<< HEAD
<body >

	
	<form action="Login" method="post">
		<div class="login">
			<header class="container">
				<h2>Log In</h2>
			</header>
			<br>
			<div class="field-set">
				<input class="usuario" id="txt-input" type="email" name="email" placeholder="email" required><br>
				<input class="usuario" id="txt-input" type="text" name="password" placeholder="Password.." required><br> 
				<input class="usuario" id="submit-input" type="submit" class=" btn submit " value="Login"> <span
				style="color: white"><%=(request.getAttribute("msgerr") == null) ? "" : request.getAttribute("msgerr")%></span><br>
				<button class="btn submit registro"  id="registid" value="Registrarse"></span><a href="registro.jsp">Registrarse</a></button><br>
			</div>
		</div>

	</form>
=======

<body>
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
</form>
</div>


</body>





>>>>>>> 1b856b983c58a9fccc229bce8c77da89a9f1671b
</body>
</html>