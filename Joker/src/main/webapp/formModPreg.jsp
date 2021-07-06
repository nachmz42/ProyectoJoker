<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar pregunta</title>
<link rel="stylesheet" href="STYLE/css/modpreg.css"></link>
</head>
<body>
	<div class="encabezado">
	<div class="home"><a style="text-decoration:none; color:black" href="admin.jsp">Home</a></div>
	<div class="logout"><a style="text-decoration:none; color:black" href="Logout">Logout</a></div>
	<div class="admin">AD</div>
	</div>
		<div class= "cuerpo">
	<div class= "testbox">




	<form action="AMDPreg" method="post">Modificación pregunta 
		<input type="text" name="pregunta" placeholder="Pregunta..."><br>
		<label>Respuesta 1</label>
		<input type="text" name="rs1" placeholder="Respuesta 1..."><br>
		<label>Respuesta 2</label>
		<input type="text" name="rs2" placeholder="Respuesta 2..."><br>
		<label>Respuesta 3</label>
		<input type="text" name="rs3" placeholder="Respuesta 3..."><br>
		<label>Respuesta 4</label>
		<input type="text" name="rs4" placeholder="Respuesta 4..."><br>
		<label>Respuesta Correcta</label>
		<input type="text" name="rsc" placeholder="Respuesta Correcta..."><br>
		<input type="hidden" name = "op" value="m">
		<input type="hidden" name = "id" value= <%= request.getAttribute("id") %>>
		<input type="hidden" name = "categoria" value= <%= request.getAttribute("categoria") %>>
		<input type="submit" value="Enviar">
		<input type="reset" value="Borrar"><br>
	</form>
	</div>
	</div>
</body>
</html>