<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="STYLE/css/eliminarusuario.css"></link>
</head>
<body>


<div class= "testbox">
	
	<h1>Eliminar Usuario</h1>
  	<form action="/Joker/ServletEliminarusuario" method="post"><br>
  
  	<div class="form2" style="">
    
    
    <label for="email" id="1">Email</label><br>
    <input type="email" id="email" name="email" placeholder="Email del usuario que desea eliminar"  required>
     <i class="icon-user"></i><br>
    
    
    <label for="password" id="1" >Password</label><br>
    <input type="text" id="password" name="password" placeholder="Password ..."  required>  <br>
  
   
    <input type="submit" value="Enviar"><br>
    <input type="reset" value="Borrar"><br>
   </div>
  </form>
   
</div>


</body>
</html>