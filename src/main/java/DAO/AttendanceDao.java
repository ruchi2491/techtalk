package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AttendanceDao {

	
	static Connection con;
	
	public static void insertData(String date,String title,String employee) throws Exception
	{
		//Statement stmt=con.createStatement();  
		con=DbUtil.getconnection();
		PreparedStatement stmt=con.prepareStatement("insert into attendance values(?,?,?)");
		stmt.setString(1, date);
		stmt.setString(2, title);
		stmt.setString(3, employee);
			if(stmt.executeUpdate()!=0)
			{
				System.out.println("inserted sucessfully...");
			}
	}
	
}
