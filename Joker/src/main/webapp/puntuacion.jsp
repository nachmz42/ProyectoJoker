<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TU PUNTUACIÓN</title>
<link type="stylesheet" href="/STYLE/css/puntuacion.css"></link>
</head>
<body>
	<% int puntuacion = (int) request.getAttribute("puntuacion");
	String tiempo = (String) request.getAttribute("tiempo");%>
	
	<h1>Tu puntuación ha sido: <%=puntuacion %></h1>
	<h1>Has tardado: <%=tiempo %></h1>
</body>
</html>