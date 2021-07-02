<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Joker</title>
<link rel="stylesheet" href="/STYLE/css/welcomepage.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<header>

    
   
  <input type="checkbox" id="ham-menu">
  <label for="ham-menu">
    <div class="hide-des">
      <span class="menu-line"></span>
      <span class="menu-line"></span>
      <span class="menu-line"></span>
      <span class="menu-line"></span>
      <span class="menu-line"></span>
      <span class="menu-line"></span>
    </div>
  </label>

  <div class="full-page-green"></div>
  <div class="ham-menu">
    <ul class="centre-text bold-text">
      <li id="home"><a href="index.jsp">Home</a>
        <li><div class="icono">
          <div class="dropdown">
            <button class="dropbtn">A JUGAR !</button>
              <div class="dropdown-content">
                <a href="#">CATEGORIAS</a>
                <a href="#">RANDOM QUIZ</a>
                <a href="#">RANKING</a>
              </div>
            </div>
        </div>
      </li>
      <li id="aboutus"><a href="#">About Us</a></li>
      <li id="login"><a href="#">Login</a></li>
      <li id="registro"><a href="registro.jsp">Registro</a></li>
    </ul>
  </div>
        
         
   <div class="cubo">
        <div class="cara" id="superior"></div>
        <div class="cara" id="frente"></div>
        <div class="cara" id="derecha"></div>
        <div class="cara" id="izquierda"></div>
        <div class="cara" id="atras"></div>
        <div class="cara" id="inferior"></div>
    </div>

	<h2 id="SMT">funciona por favor!</h2>
   
  <div class="games" ><br>
  	  <img src="STYLE/imagenes/games.jpg" class="center-img" >
	</div><br>
	
	<div class="footer">
	 <h2 id="SMT">Our Social Media</h2>
		<div class="redes">    
		    <a href="#" class="fa fa-facebook"></a>
		    <a href="#" class="fa fa-twitter"></a>
		    <a href="#" class="fa fa-instagram"></a>
		    <a href="#" class="fa fa-pinterest"></a>
		 </div>
	</div>
  
  
  
  
  <script src ="STYLE/js/welcome.js"></script>
</body>
</html>
