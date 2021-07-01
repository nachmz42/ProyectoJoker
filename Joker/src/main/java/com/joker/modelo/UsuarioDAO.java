
package com.joker.modelo;

import java.sql.Connection;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

import java.sql.SQLException;

import com.joker.services.Conexion;

public class UsuarioDAO {

	private Connection con;

	private PreparedStatement pst;

	private ResultSet rs;

	public boolean altaUsuario(Usuario u) {

		String sql = "INSERT INTO usuarios(nombre,apellidos,edad ,email,pass,rol) values(?,?,?,?,?,?) ";
		

		try {
			con = Conexion.getInstance().getConnection();
			
			pst = con.prepareStatement(sql);

			pst.setString(1, u.getNombre());

			pst.setString(2, u.getApellidos());

			pst.setInt(3, u.getEdad());

			pst.setString(4, u.getEmail());

			pst.setString(5, u.getPass());
			
			pst.setString(6, u.getRol());

			pst.executeUpdate();
			
			return true;

		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return false;
		}
		

		
	}

	public boolean modificarUsuario(Usuario u) {

		

		String sql = "UPDATE usuarios SET nombre= ?, apellidos= ?,edad= ?,pass= ?,rol= ? WHERE email=? ";

		try {
			con = Conexion.getInstance().getConnection();
			
			pst = con.prepareStatement(sql);

			pst.setString(1, u.getNombre());

			pst.setString(2, u.getApellidos());

			pst.setInt(3, u.getEdad());

			pst.setString(4, u.getPass());

			pst.setString(5, u.getRol());
			
			pst.setString(6, u.getEmail());

			pst.executeUpdate();
			
			return true;

		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return false;
		}
	}

	public boolean BorrarUsuario(String email, String pass)  {

		String sql = "DELETE  FROM usuarios where email=? and pass=?";

		try {
			con = Conexion.getInstance().getConnection();
			pst = con.prepareStatement(sql);

			pst.setString(1, email);
			pst.setString(2, pass);
			pst.executeUpdate();
			
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	
		

	}

	public Usuario login(String email, String pass) throws SQLException {

		Usuario u = null;

		String sql = "SELECT * FROM usuarios where email=? and pass=?";

		con = Conexion.getInstance().getConnection();

		pst = con.prepareStatement(sql);

		pst.setString(1, email);
		pst.setString(2, pass);

		rs = pst.executeQuery();

		if (rs.next()) {

			u = new Usuario();

			u.setNombre(rs.getString("nombre"));

			u.setApellidos(rs.getString("apellidos"));

			u.setEdad(rs.getInt("edad"));

			u.setEmail(rs.getString("email"));
			
			u.setPass(rs.getString("pass"));

			u.setRol(rs.getString("rol"));

		}

		return u;

	}




}
