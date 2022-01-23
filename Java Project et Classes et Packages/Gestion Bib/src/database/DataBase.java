  package database;
import java.sql.Connection;

import java.sql.DriverManager;

public class DataBase{
	Connection con;

	public DataBase(){
		try{
		Class.forName("com.mysql.jdbc.Driver");	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projet?useSSL=false","root","");
		
	}
		catch(Exception e){
			System.out.println("connected not yet!!");
			
		}

}
  
	public Connection connecion(){
		return con;
	}
}