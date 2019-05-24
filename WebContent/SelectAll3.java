package book;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SelectAll3")
public class SelectAll3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SelectAll3() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset:utf-8");
	    String name=(String)request.getParameter("name");
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
	    	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/books", "root", "root");
	    	
	    	String sql="SELECT * FROM book where name=?";
	    	
	    	PreparedStatement ps=conn.prepareStatement(sql);
	    	ps.setString(1, name);
	    	ResultSet rs=ps.executeQuery();
	    	//在此preparedstatement对象中(ps)执行sql语句
	    	//并返回该查询生成的resultset对象
	    	
	    	//Resultset接口用于保存JDBC执行查询时返回的结果集
	    	List<Book> list=new ArrayList<Book>(); 
	    	int i=1;
	    	while(rs.next())
	    	{
	    		Book book=new Book();
	    		book.setId(i++);
	    		book.setName(rs.getString("name"));
	    		book.setPrice(rs.getInt("price"));
	    		book.setBookcount(rs.getInt("bookcount"));
	    		book.setAuthor(rs.getString("author"));
	    		book.setTel(rs.getString("tel"));
	    		book.setOutwhere(rs.getString("outwhere"));
	    		
	    		list.add(book);
	    	}
	    	
	    	request.setAttribute("list", list);
	    	
	    	rs.close();
	    	conn.close();
	    	ps.close();
	    }
	    
	    catch (SQLException e) {
			
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	    System.out.println("已购买！");
	    request.getRequestDispatcher("list_book3.jsp").forward(request, response);
	
	}

}
