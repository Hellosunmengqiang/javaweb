package book;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Connection;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Findservlet")
public class Findservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Findservlet() {
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
	    request.getRequestDispatcher("book_list.jsp").forward(request, response);
	
	}

}





