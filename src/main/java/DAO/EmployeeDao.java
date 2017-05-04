package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import POJO.UserDetails;

public class EmployeeDao {

	static Connection con;
	public static ResultSet getdata() throws Exception
	{
		System.out.println("hii dsfdsdfs");
		con=DbUtil.getconnection();
		UserDetails ud=new UserDetails();
		Statement stmt=con.createStatement();  
		ResultSet rs=stmt.executeQuery("select * from user_details"); 
		/*while(rs.next())
		{
		ud.setEmailId(rs.getString(1));
		ud.setUserName(rs.getString(2));
		ud.setPassword(rs.getString(3));
		}*/
		return rs;
	}
	
	public static void insertData(String email,String uname,String pass) throws Exception
	{
		//Statement stmt=con.createStatement();  
		con=DbUtil.getconnection();
		PreparedStatement stmt=con.prepareStatement("insert into user_details values(?,?,?,?)");
		stmt.setString(1, email);
		stmt.setString(2, uname);
		stmt.setString(3, pass);
		stmt.setString(4, "E");
			if(stmt.executeUpdate()!=0)
			{
				System.out.println("Login sucessfully...");
			}
	}
	
	
}
