<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Sugerencias</h1>
  	<form action="/Joker/ServletSugerencias" method="post"><br>
  
    
    <label for="nombre" id="1">Nombre</label><br>
    <input type="text" id="nombre" name="nombre" placeholder="Nombre"  required>
    
    <label for="nombre" id="1">Apellidos</label><br>
    <input type="text" id="apellidos" name="apellidos" placeholder="Nombre"  required>
    
    <label for="email" id="1">Email</label><br>
    <input type="email" id="email" name="email" placeholder="Email del usuario que desea eliminar"  required>
    
    <label for="nombre" id="1">Sugerencia</label><br>
    <input type="text" id="sugerencia" name="sugerencia" placeholder="Nombre"  required>
     
 
    
   
  
   
    <input type="submit" value="Enviar"><br>
    <input type="reset" value="Borrar"><br>
   
  </form>

</body>
</html>