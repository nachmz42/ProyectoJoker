package com.joker.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.joker.modelo.Usuario;
import com.joker.modelo.UsuarioDAO;
import com.joker.modelo.Pregunta;
import com.joker.modelo.PreguntaDAO;

@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String pass = request.getParameter("password");

		UsuarioDAO udao = new UsuarioDAO();
		Usuario usu = null;
		String pageDest = "index.jsp";

		usu = udao.login(email, pass);

		// empleado existe en la BDD
		if (usu != null) {
			pageDest = "datosdepartamentos.jsp";
			HttpSession sesion = request.getSession();
			sesion.setAttribute("nombre", usu.getNombre());
			sesion.setAttribute("apellido", usu.getApellidos());
			sesion.setAttribute("edad", usu.getEdad());
			sesion.setAttribute("email", usu.getEmail());
			sesion.setAttribute("rol", usu.getRol());

		} else {
			String msgerr = "usuario y constraseña incorrecta";
			request.setAttribute("msgerr", msgerr);

			// empleado no existe en la bdd
		}

		RequestDispatcher rd = request.getRequestDispatcher(pageDest);
		rd.forward(request, response);
	}

}
