
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

	public void altaUsuario(Usuario u) throws SQLException {

		String sql = "INSERT INTO usuarios(nombre,apellidos,edad ,email,pass) values(?,?,?,?,?) ";

		con = Conexion.getInstance().getConnection();

		pst = con.prepareStatement(sql);

		pst.setString(1, u.getNombre());

		pst.setString(2, u.getApellidos());

		pst.setInt(3, u.getEdad());

		pst.setString(4, u.getEmail());

		pst.setString(5, u.getPass());

		pst.executeUpdate();

	}

	public void modificarUsuario(Usuario u) throws SQLException {

		con = Conexion.getInstance().getConnection();

		String sql = "UPDATE usuarios SET nombre= ?, apellidos= ?, edad=?WHERE email=? ";

		con = Conexion.getInstance().getConnection();

		pst = con.prepareStatement(sql);

		pst.setString(1, u.getNombre());

		pst.setString(2, u.getApellidos());

		pst.setInt(3, u.getEdad());

		pst.executeUpdate();

	}

	public void BorrarUsuario(String email) throws SQLException {

		String sql = "DELETE * FROM usuarios where email=? ";

		con = Conexion.getInstance().getConnection();

		pst = con.prepareStatement(sql);

		pst.setString(1, email);

		pst.executeUpdate();

	}

	public Usuario getUsuario(String email) throws SQLException {

		Usuario u = null;

		String sql = "SELECT * FROM where email=? ";

		con = Conexion.getInstance().getConnection();

		pst = con.prepareStatement(sql);

		pst.setString(1, email);

		rs = pst.executeQuery();

		if (rs.next()) {

			u = new Usuario();

			u.setNombre(rs.getString("nombre"));

			u.setApellidos(rs.getString("apellidos"));

			u.setEdad(rs.getInt("edad"));

			u.setEmail(rs.getString("email"));

			u.setRol(rs.getString("rol"));

		}

		return u;

	}

	public Usuario login(String email, String pass) {
		// TODO Auto-generated method stub
		return null;
	}


}
