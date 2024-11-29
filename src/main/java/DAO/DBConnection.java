package DAO;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection {
	private static Connection con = null;
	private DBConnection() {}

	static {
		try {
			Class.forName(DBInfo.driver);
			con = DriverManager.getConnection(DBInfo.dbURL,DBInfo.uName,DBInfo.pWord);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}//static block

	public static Connection get() {
		return con;
	}
}
