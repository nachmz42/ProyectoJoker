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
  <form action="/Joker/ServletAltausuario" method="post"><br>
    <label for="nombre">Nombre</label>
    <input type="text" id="nombre" name="nombre" placeholder="Tu Nombre ..."  required><br>
   
    <label for="apellidos">Apellidos</label>
    <input type="text" id="apellidos" name="apellidos" placeholder="Tus Apellidos ..." required><br>
   

    <label for="edad">Edad</label>
    <input type="text" id="edad" name="edad" placeholder="Tu edad ..."  required  ><br>
    
    
    <label for="email">Email</label>
    <input type="email" id="email" name="email" placeholder="Email ..."  required ><br>
    
    
    <label for="password">Password</label>
    <input type="text" id="password" name="password" placeholder="Password ..."  required>  <br>
  
    <label for="rol">Rol</label>
    <input type="text" id="rol" name="rol" placeholder="Admin/invitado"  required  >  <br>
   
  
    <input type="submit" value="Enviar"><br>
    <input type="reset" value="Borrar"><br>
  </form>
</div>

</body>
</html>