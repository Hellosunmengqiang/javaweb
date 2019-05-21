package book;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class Addbook
 */
@WebServlet("/Addbook")
public class Addbook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addbook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset:utf-8");
		
		try{
        	Class.forName("com.mysql.jdbc.Driver");
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/books", "root","root");
			
			String sql="insert into book(name,price,bookcount,author,tel,outwhere) values(?,?,?,?,?,?)";
			
			PreparedStatement ps=(PreparedStatement) conn.prepareStatement(sql);
		    
			Book book=new Book();
			ps.setString(1, book.getName());
			ps.setInt(2, book.getPrice());
			ps.setInt(3, book.getBookcount());
			ps.setString(4,book.getAuthor());
			ps.setString(5,book.getTel());
			ps.setString(6,book.getOutwhere());
			
			int row=ps.executeUpdate();//更新操作
			if(row>0)
			{
				System.out.print("成功添加了"+row+"条数据!");
				
			}
			
			ps.close();
			conn.close();
			
        }
   
    catch(SQLException e)
    {
    	System.out.print("图书信息添加失败！");
    	e.printStackTrace();
    }
	 catch(Exception e)
	   {
	    	System.out.print("添加失败！");
	    	e.printStackTrace();
	    }
		 request.getRequestDispatcher("searchbook.html").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
