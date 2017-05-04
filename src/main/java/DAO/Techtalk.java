package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Techtalk {

	static Connection con;
	public static void insertData(String date,String title,String description,String presenter) throws Exception
	{
		//Statement stmt=con.createStatement();  
		con=DbUtil.getconnection();
		PreparedStatement stmt=con.prepareStatement("insert into techtalktimetable values(?,?,?,?)");
		stmt.setString(1, date);
		stmt.setString(2, title);
		stmt.setString(3, description);
		stmt.setString(4, presenter);
			if(stmt.executeUpdate()!=0)
			{
				System.out.println("Login sucessfully...");
			}
	}
	public static ResultSet gettechtalk(String name) throws Exception
	{
		con=DbUtil.getconnection();
		PreparedStatement statement=con.prepareStatement("select * from techtalktimetable where title=?");
		statement.setString(1, name);
		return statement.executeQuery();
	}
	
	public static int updatetechtalk(String name,String date,String descriptor,String presenter) throws Exception
	{
		con=DbUtil.getconnection();
		PreparedStatement statement=con.prepareStatement("update techtalktimetable set techtalkdate=?,description=?,presenter=? where title=?");
		statement.setString(1,date);
		statement.setString(2,descriptor);
		statement.setString(3,presenter);
		statement.setString(4,name);
		return statement.executeUpdate();
	}
	public static int deletechtalk(String name) throws Exception
	{
		con=DbUtil.getconnection();
		PreparedStatement statement=con.prepareStatement("delete from techtalktimetable where title=?");
		statement.setString(1,name);
		return statement.executeUpdate();
	}
	
}
