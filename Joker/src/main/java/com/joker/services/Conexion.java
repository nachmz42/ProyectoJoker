package com.joker.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
	
	private static Conexion instancia;
    private Connection connection;
<<<<<<< HEAD
    private String url = "jdbc:mysql://localhost:3306/proyectojoker?serverTimezone=UTC";

=======
    private String url = "jdbc:mysql://localhost:3306/Proyectojoker?serverTimezone=UTC";
>>>>>>> 23a348aaa21fa20cec8cedaa473c487b7abfe595
    private String username = "root";
    private String password = "Mariam1998";

    private Conexion() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException ex) {
            System.out.println("Conexion a BD incorrecta : " + ex.getMessage());
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public static Conexion getInstance() throws SQLException {
        if (instancia == null) {
        	instancia = new Conexion();
        } else if (instancia.getConnection().isClosed()) {
        	instancia = new Conexion();
        }

        return instancia;
    }
}