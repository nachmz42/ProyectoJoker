/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.68
 * Generated at: 2021-07-02 12:42:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.joker.services.Conexion;

public final class AMDPregTabla_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.joker.services.Conexion");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("     \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Tabla De Preguntas</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<a href=\"formAddPreg.html\">Añadir Pregunta</a>\r\n");
      out.write("	<table>\r\n");
      out.write("	<caption><b> Lista De Todas Las Preguntas </b></caption>\r\n");
      out.write("	");
 
		Connection con = Conexion.getInstance().getConnection();
		String sql = "SELECT * FROM categoria_cultura";
		Statement st = con.createStatement();
		ResultSet rscult = st.executeQuery(sql);
		
		
		
		
			
	
      out.write("\r\n");
      out.write("	<tr>\r\n");
      out.write("			<th>Pregunta</th>\r\n");
      out.write("			<th>Respuesta 1</th>\r\n");
      out.write("			<th>Respuesta 2</th>\r\n");
      out.write("			<th>Respuesta 3</th>\r\n");
      out.write("			<th>Respuesta 4</th>\r\n");
      out.write("			<th>Respuesta Correcta</th>\r\n");
      out.write("			<th>Acciones </th>\r\n");
      out.write("	</tr>	\r\n");
      out.write("	");
 while(rscult.next()){ 
      out.write("\r\n");
      out.write("	<tr>	\r\n");
      out.write("				<td>");
      out.print(  rscult.getString("pregunta"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rscult.getString("rs1"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rscult.getString("rs2"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rscult.getString("rs3"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rscult.getString("rs4"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rscult.getString("rsc"));
      out.write(" </td>\r\n");
      out.write("				\r\n");
      out.write("				<td>\r\n");
      out.write("					<a href=\"AMDPreg?categoria=c&id=");
      out.print( rscult.getString("id_pregunta"));
      out.write("&opcion=mod\">Modificar </a> \r\n");
      out.write("					<a href=\"AMDPreg?categoria=c&id=");
      out.print( rscult.getString("id_pregunta"));
      out.write("&opcion=del\">--- Eliminar</a>\r\n");
      out.write("				</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	\r\n");
      out.write("	");
  } rscult.close();
      out.write('\r');
      out.write('\n');
      out.write('	');
 sql = "SELECT * FROM categoria_maths";
	ResultSet rsmath = st.executeQuery(sql); 
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	");
 while(rsmath.next()){ 
      out.write("\r\n");
      out.write("	<tr>	\r\n");
      out.write("				<td>");
      out.print(  rsmath.getString("pregunta"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rsmath.getString("rs1"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rsmath.getString("rs2"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rsmath.getString("rs3"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rsmath.getString("rs4"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rsmath.getString("rsc"));
      out.write(" </td>\r\n");
      out.write("				\r\n");
      out.write("				<td>\r\n");
      out.write("					<a href=\"AMDPreg?categoria=m&id=");
      out.print( rsmath.getString("id_pregunta") );
      out.write("&opcion=mod\">Modificar </a> \r\n");
      out.write("					<a href=\"AMDPreg?categoria=m&id=");
      out.print( rsmath.getString("id_pregunta") );
      out.write("&opcion=del\">--- Eliminar</a>\r\n");
      out.write("				</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	");
} rsmath.close();
      out.write('\r');
      out.write('\n');
      out.write('	');
sql = "SELECT * FROM categoria_programacion";
	ResultSet rsprog = st.executeQuery(sql); 
      out.write("\r\n");
      out.write("		");
 while(rsprog.next()){ 
      out.write("\r\n");
      out.write("	<tr>	\r\n");
      out.write("				<td>");
      out.print( rsprog.getString("pregunta"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print(  rsprog.getString("rs1"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print(  rsprog.getString("rs2"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rsprog.getString("rs3"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rsprog.getString("rs4"));
      out.write(" </td>\r\n");
      out.write("				<td>");
      out.print( rsprog.getString("rsc"));
      out.write(" </td>\r\n");
      out.write("				\r\n");
      out.write("				<td>\r\n");
      out.write("					<a href=\"AMDPreg?categoria=p&id=");
      out.print( rsprog.getString("id_pregunta") );
      out.write("&opcion=mod\">Modificar </a> \r\n");
      out.write("					<a href=\"AMDPreg?categoria=p&id=");
      out.print( rsprog.getString("id_pregunta") );
      out.write("&opcion=del\">--- Eliminar</a>\r\n");
      out.write("				</td>\r\n");
      out.write("	</tr>		\r\n");
      out.write("	");
} rsprog.close(); 
      out.write("\r\n");
      out.write("	</table>\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
