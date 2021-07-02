<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ page import = "java.sql.*" %>
     <%@ page import = "com.joker.services.Conexion" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tabla De Preguntas</title>
</head>
<body>
	<a href="formAddPreg.html">A�adir Pregunta</a>
	<table>
	<caption><b> Lista De Todas Las Preguntas </b></caption>
	<% 
		Connection con = Conexion.getInstance().getConnection();
		String sql = "SELECT * FROM categoria_cultura";
		Statement st = con.createStatement();
		ResultSet rscult = st.executeQuery(sql);
		
		
		
		
			
	%>
	<tr>
			<th>Pregunta</th>
			<th>Respuesta 1</th>
			<th>Respuesta 2</th>
			<th>Respuesta 3</th>
			<th>Respuesta 4</th>
			<th>Respuesta Correcta</th>
			<th>Acciones </th>
	</tr>	
	<% while(rscult.next()){ %>
	<tr>	
				<td><%=  rscult.getString("pregunta")%> </td>
				<td><%= rscult.getString("rs1")%> </td>
				<td><%= rscult.getString("rs2")%> </td>
				<td><%= rscult.getString("rs3")%> </td>
				<td><%= rscult.getString("rs4")%> </td>
				<td><%= rscult.getString("rsc")%> </td>
				
				<td>
					<a href="AMDPreg?categoria=c&id=<%= rscult.getString("id_pregunta")%>&opcion=mod">Modificar </a> 
					<a href="AMDPreg?categoria=c&id=<%= rscult.getString("id_pregunta")%>&opcion=del">--- Eliminar</a>
				</td>
	</tr>
	
	<%  } rscult.close();%>
	<% sql = "SELECT * FROM categoria_maths";
	ResultSet rsmath = st.executeQuery(sql); %>
	
	<% while(rsmath.next()){ %>
	<tr>	
				<td><%=  rsmath.getString("pregunta")%> </td>
				<td><%= rsmath.getString("rs1")%> </td>
				<td><%= rsmath.getString("rs2")%> </td>
				<td><%= rsmath.getString("rs3")%> </td>
				<td><%= rsmath.getString("rs4")%> </td>
				<td><%= rsmath.getString("rsc")%> </td>
				
				<td>
					<a href="AMDPreg?categoria=m&id=<%= rsmath.getString("id_pregunta") %>&opcion=mod">Modificar </a> 
					<a href="AMDPreg?categoria=m&id=<%= rsmath.getString("id_pregunta") %>&opcion=del">--- Eliminar</a>
				</td>
	</tr>
	<%} rsmath.close();%>
	<%sql = "SELECT * FROM categoria_programacion";
	ResultSet rsprog = st.executeQuery(sql); %>
		<% while(rsprog.next()){ %>
	<tr>	
				<td><%= rsprog.getString("pregunta")%> </td>
				<td><%=  rsprog.getString("rs1")%> </td>
				<td><%=  rsprog.getString("rs2")%> </td>
				<td><%= rsprog.getString("rs3")%> </td>
				<td><%= rsprog.getString("rs4")%> </td>
				<td><%= rsprog.getString("rsc")%> </td>
				
				<td>
					<a href="AMDPreg?categoria=p&id=<%= rsprog.getString("id_pregunta") %>&opcion=mod">Modificar </a> 
					<a href="AMDPreg?categoria=p&id=<%= rsprog.getString("id_pregunta") %>&opcion=del">--- Eliminar</a>
				</td>
	</tr>		
	<%} rsprog.close(); %>
	</table>
	
	
</body>
</html>