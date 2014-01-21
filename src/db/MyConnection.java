package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
	public Connection getConnection() throws Exception{
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mobile","root","root");
		
		
		return con;
	}

}
