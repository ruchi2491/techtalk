package ServletClasses;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.EmployeeDao;
import POJO.UserDetails;

/**
 * Servlet implementation class LoginServleT
 */
public class LoginServleT extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServleT() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	doGet(request, response);
		
		UserDetails ud;
		try {
			ResultSet rs = EmployeeDao.getdata();
			String x=request.getParameter("emailId");
			String y=request.getParameter("password");
		
			response.setContentType("text/html");  
	        PrintWriter out = response.getWriter();  
	        HttpSession session=request.getSession();  
	        
	        session.setAttribute("uname",x);  
	 
			while(rs.next())
			{
				String role=rs.getString(4);  
				 if(rs.getString(1).equals(request.getParameter("emailId")) && rs.getString(3).equals(request.getParameter("password")) && role.equals("A"))
					{
					 	request.getRequestDispatcher("Admin.jsp").forward(request, response);
					 	
					}
			
			else 
			{
				request.getRequestDispatcher("Employee.jsp").forward(request, response);
			}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
