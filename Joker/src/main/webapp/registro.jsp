<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro</title>
<link rel="stylesheet" href="STYLE/css/registro.css"></link>

</head>
<body>

<div class= "testbox">
<h2>Registro</h2>

<div class="form2">
  <form action="/Joker/ServletResgistro" method="post">
    <label for="nombre">Nombre</label><br>
    <input type="text" id="nombre" name="nombre" placeholder="Tu Nombre ..."><br>

    <label for="apellidos">Apellidos</label><br>
    <input type="text" id="apellidos" name="apellidos" placeholder="Tus Apellidos ..."><br>

    <label for="edad">Edad</label><br>
    <input type="text" id="edad" name="edad" placeholder="Tu edad ..."><br>
    
    <label for="email">Email</label><br>
    <input type="email" id="email" name="email" placeholder="Email ..."><br>
    <br>
    <label for="password">Password</label><br>
    <input type="text" id="password" name="password" placeholder="Password ...">  <br>
  
    <input type="submit" value="Enviar"><br>
    <input type="reset" value="Borrar"><br>
  </form>
</div>

</div>
</body>
</html>