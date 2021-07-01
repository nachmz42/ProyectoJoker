package com.joker.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.joker.services.Conexion;

public class PreguntaDAO {
	public void modPregunta(Pregunta preg, String opcion) {
		String SQL = "";
		try {
			Connection con = Conexion.getInstance().getConnection();
			if(opcion.equals("m")) {
				SQL ="Update categoria_maths set pregunta = ?,rs1=?,rs2=?,rs3=?,rs4=?,rsc=? where id_pregunta=?";
			}else {if(opcion.equals("c")) {
				SQL ="Update categoria_cultura set pregunta = ?,rs1=?,rs2=?,rs3=?,rs4=?,rsc=? where id_pregunta=?";
			}else {if(opcion.equals("p")) {
				SQL ="Update categoria_programacion set pregunta = ?,rs1=?,rs2=?,rs3=?,rs4=?,rsc=? where id_pregunta=?";
						}
					}
				}
			PreparedStatement pst = con.prepareStatement(SQL);
			pst.setString(1, preg.getPregunta());
			pst.setString(2, preg.getRs1());
			pst.setString(3, preg.getRs2());
			pst.setString(4, preg.getRs3());
			pst.setString(5, preg.getRs4());
			pst.setString(6, preg.getRsc());
			pst.setInt(7, preg.getId());
			
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void delPregunta(int id,String opcion) {
		
		String SQL = "";
		try {
			Connection con = Conexion.getInstance().getConnection();
			if(opcion.equals("m")) {
				SQL ="Delete from categoria_maths where id_pregunta=?";
			}else {if(opcion.equals("c")) {
				SQL ="Delete from categoria_cultura where id_pregunta=?";
			}else {if(opcion.equals("p")) {
				SQL ="Delete from categoria_programacion where id_pregunta=? ";
						}
					}
				}
		PreparedStatement pst = con.prepareStatement(SQL);
		pst.setInt(1,id);
		pst.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

	public void altaPregunta(Pregunta preg,String opcion) {
		String SQL ="";
		
		if(opcion.equals("m")) {
			SQL ="Insert into categoria_maths (pregunta,rs1,rs2,rs3,rs4,rsc) values (?,?,?,?,?,?)";
		}else {if(opcion.equals("c")) {
			SQL ="Insert into categoria_cultura (pregunta,rs1,rs2,rs3,rs4,rsc) values (?,?,?,?,?,?)";
		}else {if(opcion.equals("p")) {
			SQL ="Insert into categoria_programacion (pregunta,rs1,rs2,rs3,rs4,rsc) values (?,?,?,?,?,?)";
					}
				}
			}
		try {
			Connection con = Conexion.getInstance().getConnection();
			PreparedStatement pst = con.prepareStatement(SQL);
			pst.setString(1, preg.getPregunta());
			pst.setString(2, preg.getRs1());
			pst.setString(3, preg.getRs2());
			pst.setString(4, preg.getRs3());
			pst.setString(5, preg.getRs4());
			pst.setString(6, preg.getRsc());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
