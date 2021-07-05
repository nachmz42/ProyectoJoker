<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="com.joker.services.Conexion"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	font-size: 40px;
	margin-top: collapse;
	padding: 0.3em;
	color: #fff;
	background: #000;
}

th {
	background: #eee;
}
</style>
<link rel="stylesheet" href="STYLE/css/tabla.css"></link>
</head>
<body>

	<div class="encabezado">
	<div class="home"><a style="text-decoration: none; color: black" href="index.jsp">Home</a></div>
	<div class="logout"><a style="text-decoration: none; color: black" href="Logout">Logout</a></div>
	<div class="admin">AD</div>
	</div>
	<table>
		<caption>
			<b> Lista de usuarios </b>
		</caption>
		<% 
		Connection con = Conexion.getInstance().getConnection();
		String sql = "SELECT * FROM usuarios";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		
		
		
			
	%>
		<tr>
			
			<th>Nombre</th>
			<th>Apellidos</th>
			<th>Email</th>
			<th>password</th>
			<th>Rol</th>
			

		</tr>
		<% while(rs.next()){ %>
		<tr>
			<td><%=  rs.getString("nombre")%></td>
			<td><%= rs.getString("apellidos")%></td>
			<td><%= rs.getString("email")%></td>
			<td><%= rs.getString("pass")%></td>
			<td><%= rs.getString("rol")%></td>
			

			<%  } rs.close();%>
		</tr>
		</table>

</body>
</html>