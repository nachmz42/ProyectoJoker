package com.joker.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class ServletCategorias
 */
@WebServlet("/ServletCategorias")
public class ServletCategorias extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int puntuacion= 0;
		String rs1,rs2,rs3,rs4,rs5,rs6,rs7,rs8,rs9,rs10;
		String rsc1,rsc2,rsc3,rsc4,rsc5,rsc6,rsc7,rsc8,rsc9,rsc10;
		HttpSession sesion = request.getSession();
		String email = (String) sesion.getAttribute("email");
		String nombre = (String) sesion.getAttribute("nombre");
		String ape = (String) sesion.getAttribute("apellidos");
		String edad = (String) sesion.getAttribute("edad");


		
		
		
		rs1 = request.getParameter("pregunta1");
		rsc1= request.getParameter("p1rsc");
		rs2 = request.getParameter("pregunta2");
		rsc2= request.getParameter("p2rsc");
		rs3 = request.getParameter("pregunta3");
		rsc3= request.getParameter("p3rsc");
		rs4 = request.getParameter("pregunta4");
		rsc4= request.getParameter("p4rsc");
		rs5 = request.getParameter("pregunta5");
		rsc5= request.getParameter("p5rsc");
		rs6 = request.getParameter("pregunta6");
		rsc6= request.getParameter("p6rsc");
		rs7 = request.getParameter("pregunta7");
		rsc7= request.getParameter("p7rsc");
		rs8 = request.getParameter("pregunta8");
		rsc8= request.getParameter("p8rsc");
		rs9= request.getParameter("pregunta9");
		rsc9= request.getParameter("p9rsc");
		rs10 = request.getParameter("pregunta10");
		rsc10= request.getParameter("p10rsc");
		String respuestas[] = {rs1,rs2,rs3,rs4,rs5,rs6,rs7,rs8,rs9,rs10};
		String respcorrectas[] = { rsc1,rsc2,rsc3,rsc4,rsc5,rsc6,rsc7,rsc8,rsc9,rsc10};
		
		for(int i = 0; i<=9;i++) {
			if(respuestas[i].equals(respcorrectas[i])) {
				puntuacion ++;
			}
		}
	}

}