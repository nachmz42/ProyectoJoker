<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*" %>
<%@ page import = "com.joker.services.Conexion" %>
<%@ page import = "com.joker.modelo.Pregunta" %>
<%@ page import = "com.joker.modelo.PreguntaDAO" %>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ranking</title>
<style>
table {
	width: 100%;
	border: 1px solid #000;
}

th, td {
	width: 25%;
	text-align: justify;
	vertical-align: 20px;
	border: 1px solid #000;
	border-collapse: collapse;
	padding: 0.3em;
	caption-side: bottom;
}

caption {
	font: Arial;
	font-size: 20px;
	margin-top: collapse;
	padding: 0.3em;
	color: #F93208 ;
	background: #FDEDEC;
}

th {
	background: #eee;
}
</style>
<link rel="stylesheet" href="STYLE/css/ranking.css"></link>
</head>
<body>
<div class ="encabezado">
<header>
		<nav>
			<div class="home"><a href="usuarios.jsp" style="text-decoration:none; color:black" >Home</a></div>
			  <div class="logout"><a href="Logout" style="text-decoration:none; color:black">Exit</a></div>
		</nav>

		<h1 class="titulo">Ranking</h1>
	</header>
	</div>
<%
Connection con = Conexion.getInstance().getConnection();
String sql="Select * from ranking where  categoria = 'Cultura General'  order by puntuacion desc , tiempo desc" ;
Statement st = con.createStatement();
ResultSet rscult = st.executeQuery(sql);
int ic = 1;
%>

<table>
<caption>Cultura General</caption>
	<tr>
		<td>Nombre</td>
		<td>Apellidos</td>
		<td>Puntuación</td>
		<td>Tiempo</td>
	</tr>
	<% while(rscult.next() && ic <=5) {%>
	<tr>
		<td><%= rscult.getString("nombre") %></td>
		<td><%= rscult.getString("apellidos") %></td>
		<td><%= rscult.getString("puntuacion") %></td>
		<td><%= rscult.getString("tiempo") %></td>
	
	</tr>
	<% ic++; }%>
</table>
<br>
<%
sql="Select * from ranking where categoria = 'Matemáticas' order by puntuacion desc , tiempo asc" ;
ResultSet rsmaths = st.executeQuery(sql);
int im = 1;
%>
<table>
<caption>Matemáticas</caption>
	<tr>
		<td>Nombre</td>
		<td>Apellidos</td>
		<td>Puntuación</td>
		<td>Tiempo</td>
	</tr>
	<% while(rsmaths.next() && im <=5) {%>
	<tr>
		<td><%= rsmaths.getString("nombre") %></td>
		<td><%= rsmaths.getString("apellidos") %></td>
		<td><%= rsmaths.getString("puntuacion") %></td>
		<td><%= rsmaths.getString("tiempo") %></td>
	
	</tr>
	<% im++; }%>
</table>
<br>
<%
sql="Select * from ranking where categoria = 'Programación' order by puntuacion desc , tiempo asc" ;
ResultSet rsprog = st.executeQuery(sql);
int ip = 1;
%>
<table>
<caption> Programación</caption>
	<tr>
		<td>Nombre</td>
		<td>Apellidos</td>
		<td>Puntuación</td>
		<td>Tiempo</td>
	</tr>
	<% while(rsprog.next() && ip <=5) {%>
	<tr>
		<td><%= rsprog.getString("nombre") %></td>
		<td><%= rsprog.getString("apellidos") %></td>
		<td><%= rsprog.getString("puntuacion") %></td>
		<td><%= rsprog.getString("tiempo") %></td>
	
	</tr>
	<% ip++; }%>
</table>
<br>

<%
sql="Select * from ranking where categoria = 'Random' order by puntuacion desc , tiempo asc";
ResultSet rsrand = st.executeQuery(sql);
int ir = 1;
%>

<table>
<caption>Random</caption>
	<tr>
		<td>Nombre</td>
		<td>Apellidos</td>
		<td>Puntuación</td>
		<td>Tiempo</td>
	</tr>
	<% while(rsrand.next() && ir <=3) {%>
	<tr>
		<td><%= rsrand.getString("nombre") %></td>
		<td><%= rsrand.getString("apellidos") %></td>
		<td><%= rsrand.getString("puntuacion") %></td>
		<td><%= rsrand.getString("tiempo") %></td>
	
	</tr>
	<% ir++; }%>
</table>



</body>
</html>