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

 
<form action="/Joker/ServletResgistro" method="post">
  <div class="registt">
   <div class="Container">
   <header class="head-form">
      <h2>Registro</h2>
   </header>

   <br>
   <div class="field-set">
 
      <input class="campos" id="txt-input" type="text" placeholder="Nombre" name="nombre">
     
      <br>
    
      <input class="campos" id="txt-input" type="text" placeholder="Apellidos"   name="apellidos">
      <br>

      <input class="campos" id="txt-input" type="text" placeholder="Edad"   name="edad">
      <br>
    
      <input class="campos" id="txt-input" type="email" placeholder="Email"   name="email">
      <br>
    
      <input class="campos" id="txt-input" type="password" placeholder="Password"   name="password">
      <br>
      <button class="btn submits registrar" value="Enviar"> Registratrse </button>
      <span style="color: white"><%=(request.getAttribute("msgerr") == null) ? "" : request.getAttribute("msgerr")%></span>
  
      <button class="btn submits borrar" value="Borrar">Borrar</button>
   </div>
  </div>
  </div>
</form>


</body>
</html>