
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
<title>Cultura General</title>
</head>
<body>
	<% 
	Long datetime = System.currentTimeMillis();
	Timestamp inicio = new Timestamp(datetime);
	Long inicial = inicio.getTime();
	String ini = String.valueOf(inicial);
	
	Connection con = Conexion.getInstance().getConnection();
	String SQL = "Select MAX(id_pregunta) as id_pregunta from categoria_cultura";
	Statement st = con.createStatement();
	String sql="Select * from categoria_cultura where id_pregunta = ?";
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs = st.executeQuery(SQL);
	ResultSet rspregs;
	
	int idmax = 0;
	
	while(rs.next()){
		idmax = rs.getInt("id_pregunta");
	}
	
	int elegidas[] = new int[10];
	
	Pregunta pregs[] = new Pregunta[10];
	PreguntaDAO pdao = new PreguntaDAO();
	int x;
	double i = Math.random()*(idmax)+1;
	x = (int) i;

	for(int w = 0; w<=9; w++){
		while(true) {
			
			
			i = Math.random()*(idmax)+1;
			x = (int) i;

			if(pdao.check(elegidas,x)) {
			}else {
				elegidas[w] = x;
				break;
			}
		}
	}

	for(int z=0; z<=9;z++){
		pst.setString(1,String.valueOf(elegidas[z]));
		rspregs = pst.executeQuery();
		while(rspregs.next()){
			
			pregs[z] = new Pregunta();
			pregs[z].setPregunta(rspregs.getString("pregunta"));
			pregs[z].setRs1(rspregs.getString("rs1"));
			pregs[z].setRs2(rspregs.getString("rs2"));
			pregs[z].setRs3(rspregs.getString("rs3"));
			pregs[z].setRs4(rspregs.getString("rs4"));
			pregs[z].setRsc(rspregs.getString("rsc"));
			pregs[z].setId(elegidas[z]);
			break;			
		}
	}
	
	%>
	
	<form action="ServletCategorias" method="post">
		<input type="hidden" name="inicial" value="<%=ini%>">

	<p> <%=pregs[0].getPregunta() %></p>
	
	<select name="pregunta1">

    	<option value="<%=pregs[0].getRs1() %>"><%=pregs[0].getRs1() %></option>
    	<option value="<%=pregs[0].getRs2() %>"><%=pregs[0].getRs2() %></option>
    	<option value="<%=pregs[0].getRs3() %>"><%=pregs[0].getRs3() %></option>
    	<option value="<%=pregs[0].getRs4() %>"><%=pregs[0].getRs4() %></option>
		
  	</select>
  	<input type="hidden" name="p1rsc" value=<%= pregs[0].getRsc()%>>
  	
	<p> <%=pregs[1].getPregunta() %></p>
	<select name="pregunta2">

    	<option value="<%=pregs[1].getRs1() %>"><%=pregs[1].getRs1() %></option>
    	<option value="<%=pregs[1].getRs2() %>"><%=pregs[1].getRs2() %></option>
    	<option value="<%=pregs[1].getRs3() %>"><%=pregs[1].getRs3() %></option>
    	<option value="<%=pregs[1].getRs4() %>"><%=pregs[1].getRs4() %></option>
		
  	</select>
  	<input type="hidden" name="p2rsc" value=<%= pregs[1].getRsc()%>>	
  	
	<p> <%=pregs[2].getPregunta() %></p>
	<select name="pregunta3">

    	<option value="<%=pregs[2].getRs1() %>"><%=pregs[2].getRs1() %></option>
    	<option value="<%=pregs[2].getRs2() %>"><%=pregs[2].getRs2() %></option>
    	<option value="<%=pregs[2].getRs3() %>"><%=pregs[2].getRs3() %></option>
    	<option value="<%=pregs[2].getRs4() %>"><%=pregs[2].getRs4() %></option>
    	

  	</select>
  	<input type="hidden" name="p3rsc" value=<%= pregs[2].getRsc()%>>
  	
  	
	<p> <%=pregs[3].getPregunta() %></p>
	<select name="pregunta4">

    	<option value="<%=pregs[3].getRs1() %>"><%=pregs[3].getRs1() %></option>
    	<option value="<%=pregs[3].getRs2() %>"><%=pregs[3].getRs2() %></option>
    	<option value="<%=pregs[3].getRs3() %>"><%=pregs[3].getRs3() %></option>
    	<option value="<%=pregs[3].getRs4() %>"><%=pregs[3].getRs4() %></option>
    	

  	</select>
  	<input type="hidden" name="p4rsc" value=<%= pregs[3].getRsc()%>>
  	
	<p> <%=pregs[4].getPregunta() %></p>
	<select name="pregunta5">

    	<option value="<%=pregs[4].getRs1() %>"><%=pregs[4].getRs1() %></option>
    	<option value="<%=pregs[4].getRs2() %>"><%=pregs[4].getRs2() %></option>
    	<option value="<%=pregs[4].getRs3() %>"><%=pregs[4].getRs3() %></option>
    	<option value="<%=pregs[4].getRs4() %>"><%=pregs[4].getRs4() %></option>
    	

  	</select>
  	<input type="hidden" name="p4rsc" value=<%= pregs[4].getRsc()%>>
	
	<p> <%=pregs[5].getPregunta() %></p>
	<select name="pregunta6">

    	<option value="<%=pregs[5].getRs1() %>"><%=pregs[5].getRs1() %></option>
    	<option value="<%=pregs[5].getRs2() %>"><%=pregs[5].getRs2() %></option>
    	<option value="<%=pregs[5].getRs3() %>"><%=pregs[5].getRs3() %></option>
    	<option value="<%=pregs[5].getRs4() %>"><%=pregs[5].getRs4() %></option>
    	

  	</select>
  	<input type="hidden" name="p6rsc" value=<%= pregs[5].getRsc()%>>
	
	<p> <%=pregs[6].getPregunta() %></p>
	<select name="pregunta7">

    	<option value="<%=pregs[6].getRs1() %>"><%=pregs[6].getRs1() %></option>
    	<option value="<%=pregs[6].getRs2() %>"><%=pregs[6].getRs2() %></option>
    	<option value="<%=pregs[6].getRs3() %>"><%=pregs[6].getRs3() %></option>
    	<option value="<%=pregs[6].getRs4() %>"><%=pregs[6].getRs4() %></option>
    	

  	</select>
  	<input type="hidden" name="p7rsc" value=<%= pregs[6].getRsc()%>>
	
	<p> <%=pregs[7].getPregunta() %></p>
	<select name="pregunta8">

    	<option value="<%=pregs[7].getRs1() %>"><%=pregs[7].getRs1() %></option>
    	<option value="<%=pregs[7].getRs2() %>"><%=pregs[7].getRs2() %></option>
    	<option value="<%=pregs[7].getRs3() %>"><%=pregs[7].getRs3() %></option>
    	<option value="<%=pregs[7].getRs4() %>"><%=pregs[7].getRs4() %></option>
    	

  	</select>
  	<input type="hidden" name="p8rsc" value=<%= pregs[7].getRsc()%>>
	
	<p> <%=pregs[8].getPregunta() %></p>
	<select name="pregunta9">

    	<option value="<%=pregs[8].getRs1() %>"><%=pregs[8].getRs1() %></option>
    	<option value="<%=pregs[8].getRs2() %>"><%=pregs[8].getRs2() %></option>
    	<option value="<%=pregs[8].getRs3() %>"><%=pregs[8].getRs3() %></option>
    	<option value="<%=pregs[8].getRs4() %>"><%=pregs[8].getRs4() %></option>
    	

  	</select>
  	<input type="hidden" name="p9rsc" value=<%= pregs[8].getRsc()%>>
	
	<p> <%=pregs[9].getPregunta() %></p>
		<select name="pregunta10">

    	<option value="<%=pregs[9].getRs1() %>"><%=pregs[9].getRs1() %></option>
    	<option value="<%=pregs[9].getRs2() %>"><%=pregs[9].getRs2() %></option>
    	<option value="<%=pregs[9].getRs3() %>"><%=pregs[9].getRs3() %></option>
    	<option value="<%=pregs[9].getRs4() %>"><%=pregs[9].getRs4() %></option>
    	

  	</select>
  	<input type="hidden" name="p10rsc" value=<%= pregs[9].getRsc()%>>	
  	<br>
  	<input type="hidden" name="categoria" value="Cultura General">	
  	<input type="submit" value="Enviar Respuestas">	
	</form>
	
</body>
</html>