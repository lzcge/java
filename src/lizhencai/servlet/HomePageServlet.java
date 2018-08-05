package lizhencai.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.StringUtils;

import lizhencai.bbs.DAOImp;
import lizhencai.bbs.Message;
import lizhencai.bbs.Page;
import lizhencai.bbs.User;
import lizhencai.bbs.answermessage;

/**
 * Servlet implementation class HomePageServlet
 */
@WebServlet("/HomePageServlet")
public class HomePageServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String choice = request.getParameter("choice");
		if(choice.equals("seemessage")) {
			pagelist(request,response);
		}
		else if(choice.equals("sendmessage")) {
			
			sendmessage(request,response);
		}
		else if(choice.equals("findmessage")) {
			
			findmessage(request,response);
		}
		else if(choice.equals("self")) {
			
			findself(request,response);
		}
		else if(choice.equals("answerarticle")) {
			
			answerarticle(request,response);
		}
		else if(choice.equals("answer")) {
			
			answer(request,response);
		}else if(choice.equals("deletearticle")) {
		
			deletearticle(request,response);
			
		}
	}

	
	private void deletearticle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		DAOImp daoimp = new DAOImp();
		User user = (User)request.getSession().getAttribute("User");
		daoimp.deletearticle(id);
		findself(request,response);
		//request.setAttribute("findself", list);
		//request.getRequestDispatcher("/UserSelf.jsp").forward(request, response);
	}


	private void answer(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		DAOImp daoimp = new DAOImp();
		User user = (User)request.getSession().getAttribute("User");
		String id = request.getParameter("id");
		String content = request.getParameter("content");
		answermessage an = new answermessage();
		an.setId(id);
		an.setContent(content);
		an.setUsername(user.getUsername());
		daoimp.SaveAnswer(an);
		//response.sendRedirect("/answersuccess.jsp");
		request.setAttribute("id", id);
		request.getRequestDispatcher("/answersuccess.jsp").forward(request, response);
	}


	private void answerarticle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		DAOImp daoimp = new DAOImp();
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		List<answermessage> list = daoimp.getanswermessage(id);
		request.setAttribute("answerarticle", list);
		request.getRequestDispatcher("/answerarticle.jsp").forward(request, response);
		
		
	}


	private void findself(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		DAOImp daoimp = new DAOImp();
		User user = (User)request.getSession().getAttribute("User");
		List<Message> list = daoimp.getselfmessage(user.getUsername());
		request.setAttribute("findself", list);
		request.getRequestDispatcher("/UserSelf.jsp").forward(request, response);
		
	}


	private void sendmessage(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession httpSession = request.getSession();
		User user = (User)httpSession.getAttribute("User");
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String theme = request.getParameter("theme");
		String content = request.getParameter("content");
		if(theme!="" && content!="") {
			PrintWriter printWriter = response.getWriter();
			DAOImp daoimp = new DAOImp();
			Message message = new Message();
			message.setId(UUID.randomUUID().toString());
			message.setCont(content);
			message.setTitle(theme);
			message.setUsername(user.getUsername());
			daoimp.SaveArticle(message);
			pagelist(request,response);
			printWriter.println("发表成功");
			//List<Message> list = daoimp.getmessage();
			//request.setAttribute("articlelist", list);
			//request.getRequestDispatcher("/article.jsp").forward(request, response);
			
		}

	
		
	}

	private void seemessage(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		DAOImp daoimp = new DAOImp();
		List<Message> list = daoimp.getmessage();
		request.setAttribute("articlelist", list);
		request.getRequestDispatcher("/article.jsp").forward(request, response);
	}
	
	
	private void findmessage(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		DAOImp daoimp = new DAOImp();
		String title = request.getParameter("find");
		List<Message> list = daoimp.getfindmessage(title);
		request.setAttribute("findarticlelist", list);
		request.getRequestDispatcher("/SouSuo.jsp").forward(request, response);
	}
	
	
	public void pagelist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  DAOImp daoimp = new DAOImp();
		  String currentPage = request.getParameter("currentPage");
		  if(currentPage==null){  //用户直接来请求这个列表, 没有传递当前页
			  currentPage="1";
		  }
		  Integer  currentPageI =   Integer.parseInt(currentPage); //有客户传递过来的...
		  Integer pageSize=3;  //用户自定定义每页显示多少条
		  Page page = new Page();
		  page.setCurrentPage(currentPageI);
		  //设置每页条数
		  page.setPageSize(pageSize);
		  //设置上一页,  
		  page.setPriorPage(currentPageI-1<=0?1:currentPageI-1);
		  Integer start = (currentPageI-1)*pageSize;
		  List<Message> list = daoimp.pageList(start,pageSize);
		  page.setList(list); // 从数据库中查询,只能够是当前页上的数据..
		  int count  =daoimp.count();
		  page.setCount(count); //只有到数据库中查询 select count(id) from employee 执行该sql就是去查询数据库中数据的总条数
		  //设置总页数
		  page.setTotalPage(page.getCount()%pageSize!=0?page.getCount()/pageSize+1:page.getCount());
		  //设置下一页
		  page.setNextPage(currentPageI+1>=page.getTotalPage()?page.getTotalPage():currentPageI+1);
		  request.setAttribute("page", page);
		  request.setAttribute("articlelist", list);
		  request.getRequestDispatcher("/article.jsp").forward(request, response);
		
	}
	

}
