package book;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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

@WebServlet("/SelectAll2")
public class SelectAll2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SelectAll2() {
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
	    
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
	    	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/books", "root", "root");
	    	
	    	String sql="SELECT * FROM book";
	    	
	    	Statement st=conn.createStatement();
	    	ResultSet rs=st.executeQuery(sql);
	    	//在对象st中执行给定的sql语句，该语句返回单个resultset对象
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
	    	st.close();
	    } 
	    catch (SQLException e) {
			
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	    request.getRequestDispatcher("list_book2.jsp").forward(request, response);
	
	}

}
