package vehiclePackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class vehiclesDBconnection {
	
	private static String url = "jdbc:mysql://localhost:3306/vehicles_schema";
	private static String user = "root";
	private static String pass = "thisarani@123";
	private static Connection con;
	
	public static Connection getConnection () {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user, pass);
		}
		catch(Exception e) {
			System.out.println("Database Not Connected !");
		}
		
		return con;
	}

}
