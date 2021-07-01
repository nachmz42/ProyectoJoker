package com.joker.modelo;

public class Usuario {

	private String nombre;

	private String apellidos;

	private int edad;

	private String email;

	private String pass;

	private String rol;

	public Usuario() {

		super();
		this.rol = "invitado";

	}

	public Usuario(String nombre, String apellidos, int edad, String email, String pass, String rol) {

		super();

		this.nombre = nombre;

		this.apellidos = apellidos;

		this.edad = edad;

		this.email = email;

		this.pass = pass;

		this.rol = "invitado";

	}
	
	
	

	public Usuario(String email, String pass) {
		super();
		this.email = email;
		this.pass = pass;
	}

	public String getNombre() {

		return nombre;

	}

	public void setNombre(String nombre) {

		this.nombre = nombre;

	}

	public String getApellidos() {

		return apellidos;

	}

	public void setApellidos(String apellidos) {

		this.apellidos = apellidos;

	}

	public int getEdad() {

		return edad;

	}

	public void setEdad(int edad) {

		this.edad = edad;

	}

	public String getEmail() {

		return email;

	}

	public void setEmail(String email) {

		this.email = email;

	}

	public String getPass() {

		return pass;

	}

	public void setPass(String pass) {

		this.pass = pass;

	}

	public String getRol() {

		return rol;

	}

	public void setRol(String rol) {

		this.rol = rol;

	}

	@Override

	public String toString() {

		return "Usuario [nombre=" + nombre + ", apellidos=" + apellidos + ", edad=" + edad + ", email=" + email

				+ ", pass=" + pass + ", rol=" + rol + "]";

	}

}