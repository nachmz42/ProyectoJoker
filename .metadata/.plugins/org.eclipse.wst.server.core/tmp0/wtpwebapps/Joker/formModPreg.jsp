<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar pregunta</title>
</head>
<body>
	<form action="AMDPreg" method="post">Modificación de la pregunta 
		<label>Pregunta</label>
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
<<<<<<< HEAD
		<input type="hidden" op = "m">
=======
		<input type="hidden" name = "op" value="m">
		<input type="hidden" name = "id" value= <%= request.getAttribute("id") %>>
		<input type="hidden" name = "categoria" value= <%= request.getAttribute("categoria") %>>
		<input type="submit" value="SUBMITTTTTTTTT">
>>>>>>> 164ed44902bedfa56e3debae75f664274d57306e
	</form>
</body>
</html>