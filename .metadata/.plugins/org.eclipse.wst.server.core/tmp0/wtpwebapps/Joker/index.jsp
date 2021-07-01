<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Joker</title>
<link rel="stylesheet" href="STYLE/css/welcomepage.css"></link>
</head>
<body>

  <header>

    
    <!-- el boton del despliegue-->
    <div class="icono">
        <button id= "icono" onclick="abrir_barra()">☰</button>
    </div>

    <!-- para cerar el despliegue-->
    <div class="Sidebarlinks" style="display:none" id="SideBar">
        <button onclick="cerrar_barra()">Close</button><br>
        <a id="cultge" href="#">CATEGORIAS<br>
        <a id="random" href="#">RANDOM QUIZ</a><br>
        <a id="rank" href="#">RANKING</a> <br>
    </div>
    
    <!-- Icons in yhe header-->
    <div class="icons">
        <p><button id="homeicon" ><a href="#">Home</a></button></p>
        <p><button id="AbouUs" ><a href="#">About Us</a></button></p>
        <p><button id="Login" ><a href="login.jsp">Login</a></button></p>
        <p><button id="Resgistro" ><a href="registro.jsp">Resgistro</a></button></p>
        <%

			String nombre_variable = (String)session.getAttribute("Mensaje");
        	out.print(nombre_variable);

		%>
    </div>
    
    

    </header>
    
    <section>
        <div class="welcomingsg" >
             <p>hi </p>
        </div>
    </section>
        
    <section>
        <div class="games" >
            <img src="STYLE/imagenes/games.jpg" id="games" >
        </div>
    </section>


    <footer>
        
        
        
    </footer>
  
  <script src ="STYLE/js/welcome.js"></script>

</body>
</html>