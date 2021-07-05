<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Usuario</title>
<link rel="stylesheet" href="STYLE/css/eliminarusuario.css"></link>
</head>
<body>
<div class="encabezado">
<div class="home"><a style="text-decoration:none; color:black" href="index.jsp">Home</a></div>
<div class="logout"><a style="text-decoration:none; color:black" href="Logout">Logout</a></div>
<div class="admin">AD</div>
</div>

<div class= "cuerpo">
<div class= "testbox">
	
	<h1>Eliminar Usuario</h1>
  	<form action="/Joker/ServletEliminarusuario" method="post"><br>
  
  	<div class="form2">
    
    
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
</div>

</body>
</html>