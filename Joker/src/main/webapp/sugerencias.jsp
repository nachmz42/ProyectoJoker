<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="STYLE/css/sugerencias.css"></link>
<body>
<<<<<<< HEAD
    <form class="form">
          <div class="container">
        <div class="pageTitle title">Sugerencias</div>
        <div class="secondaryTitle title">Bienvenido al formulario de sugerencias</div>
         <textarea class="message formEntry" placeholder="Escriba aqui su sugerencia..."></textarea>
         <button class="submit formEntry" onclick="thanks()"><a href="usuario.jsp">Submit</a></button>
        </div>
    </form>
=======
<h1>Sugerencias</h1>
  	<form action="/Joker/ServletSugerencia" method="post"><br>
  
    
    
    <label for="nombre" id="1">Sugerencia</label><br>
    <input type="text" id="sugerencia" name="sugerencia" placeholder="Introduzca sugerencia"  required><br>
     
 
    
   
  
   
    <input type="submit" value="Enviar"><br>
    <input type="reset" value="Borrar"><br>
   
  </form>
>>>>>>> 134f6f77d29cec91371d1e5676738775e580c72b

</body>
</html>