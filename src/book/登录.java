package book;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

@WebServlet("/��¼")
public class ��¼ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ��¼() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset:utf-8");
		
		String s_username = request.getParameter("username");
		String s_password = request.getParameter("password");
		   String sql="";
		     try{
		    	 Class.forName("com.mysql.jdbc.Driver");
					Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/books", "root","root");
					Statement st=(Statement) conn.createStatement();
					
				sql="select * from users where username like '"+s_username+"' and password like '"+s_password+"'";
					ResultSet rs=st.executeQuery(sql);
					if(rs.next())
					{
						
						request.getRequestDispatcher("searchbook.jsp").forward(request,response);
						
					}
					else
					{
						
						request.getRequestDispatcher("login.html").forward(request,response);
					    System.out.println("�˺Ż��������");
					}
					rs.close();
					st.close();
					conn.close();
					
		     }
		  catch(Exception ex)
		  {
			  System.out.println("����ʧ�ܣ�");
			  
		  }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}






