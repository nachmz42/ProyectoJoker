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

=======
>>>>>>> 926db98652f8fe4d52fbbeeb9aa77deb6def354a
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

<<<<<<< HEAD


</body>



</body>

=======
</body>


>>>>>>> 926db98652f8fe4d52fbbeeb9aa77deb6def354a
</html>