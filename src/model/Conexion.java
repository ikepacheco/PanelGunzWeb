package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
	public Connection con () {
		String serverIP="127.0.0.1";
		String portSQL="1433";
		String username="sa";
		String password="123456789";
		String database="GunzDB";
		String url = "jdbc:sqlserver://" + serverIP + ":" + portSQL + ";databaseName=" + database + ";allowMultiQueries=true;";
		Connection cn = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			cn = (Connection) DriverManager.getConnection(url,username,password);
			if (cn != null)
				return cn;
		}
		catch(Exception ex) {}
		return cn;
	}
}
