package lizhencai.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lizhencai.bbs.User;

import lizhencai.bbs.myexception;

public class UserServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse responsee) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String cmd = request.getParameter("cmd");
		if(cmd.equals("saveuser")) {
			save(request,responsee);
		}
		else if(cmd.equals("getuser")) {
			
			logincheck(request,responsee);
		}
	}



	protected void save(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		if(username!="" && password!="" && password2.equals(password))
		{
			String sql = "insert into login(username,password)values('"+username+"','"+password+"')";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user?useUnicode=true&characterEncoding=utf-8", "root" , "li1997525626");
				Statement statement = conn.createStatement();
				statement.executeUpdate(sql);
				response.sendRedirect("/registerSuccess.jsp");
			}catch(Exception e) {
				e.printStackTrace();
				
			}
		}
		else if(username!="" && password!="" && !password2.equals(password)){
			int num = 1;
			request.setAttribute("int", num);
			request.getRequestDispatcher("/RegisterError.jsp").forward(request, response);
		   
		}
		else  {
			int num = 2;
			request.setAttribute("int", num);
			request.getRequestDispatcher("/RegisterError.jsp").forward(request, response);
			
		}
		
	
	}
	
	
	protected void logincheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String username = "";
		String password = "";
		username = request.getParameter("username");
		password = request.getParameter("password");
		
		//获取验证码
		String piccode=(String) request.getSession().getAttribute("piccode");
	    String checkCode=request.getParameter("checkCode");  //取值
	    checkCode=checkCode.toUpperCase();  //把字符全部转换为大写的（此语句可以用于验证码不区分大小写）
	        
		User user = new User();
		user.setUsername(username);	
		user.setPassword(password);
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("User",user);
		
		//通过去数据库先查询用户名，在查到用户明后再去比较密码
		//
		if(username==null || password==null || checkCode==null){
			//myexception ex = new myexception();
			throw new myexception();
			
		}
		else{
			try {
					String sql = "select * from login where username='"+username+"'";
					String sql2 = "select * from login where password='"+password+"'";
					Class.forName("com.mysql.jdbc.Driver");
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root" , "li1997525626");
					Statement stmt1 = conn.createStatement();
					Statement stmt2 = conn.createStatement();
					ResultSet rs = stmt1.executeQuery(sql);
					ResultSet rs2 = stmt2.executeQuery(sql2);
					if(rs.next() && rs2.next() && checkCode.equals(piccode)){
						request.getRequestDispatcher("successlogin.jsp").forward(request, response);
					}
					else{
						request.getRequestDispatcher("errorlogin.jsp").forward(request, response);
					}
				}catch(Exception e) {
					e.printStackTrace();
					
				}
					
			}
		
		
		}
	
}
