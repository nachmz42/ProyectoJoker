<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div>
  <form action="/Joker/ServletEliminarusuario" method="post"><br>
  
  	<label for="email">Introduzca email del usuario que desea eliminar</label>
    <input type="email" id="email" name="email" placeholder="Email ..." required><br>
    
    <label for="password">Introduzca password para eliminar el usuario</label>
    <input type="text" id="password" name="password" placeholder="Password ..." required><br>
  
    <input type="submit" value="Enviar"><br>
    <input type="reset" value="Borrar"><br>
  </form>
</div>


  	
  

</body>
</html>