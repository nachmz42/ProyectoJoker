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
  	<form action="/Joker/ServletSugerencia" method="post"><br>
  
    
    
    <label for="nombre" id="1">Sugerencia</label><br>
    <input type="text" id="sugerencia" name="sugerencia" placeholder="Introduzca sugerencia"  required><br>
     
 
    
   
  
   
    <input type="submit" value="Enviar"><br>
    <input type="reset" value="Borrar"><br>
   
  </form>

</body>
</html>