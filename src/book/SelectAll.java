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

@WebServlet("/SelectAll")
public class SelectAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SelectAll() {
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
	    	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/book", "root", "root");
	    	
	    	String sql="SELECT * FROM books";
	    	
	    	Statement st=conn.createStatement();
	    	ResultSet rs=st.executeQuery(sql);
	    	//�ڶ���st��ִ�и�����sql��䣬����䷵�ص���resultset����
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
	    		book.setQq(rs.getString("qq"));
	    		book.setTel(rs.getString("tel"));
	    		
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
	    request.getRequestDispatcher("book_list.jsp").forward(request, response);
	
	}

}
