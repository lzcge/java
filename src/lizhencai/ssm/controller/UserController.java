package lizhencai.ssm.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lizhencai.ssm.po.User;
import lizhencai.ssm.po.custom.UserCustom;

import lizhencai.ssm.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userservice;
	
		//查询用户
		@RequestMapping(value="/finduser",method= {RequestMethod.POST,RequestMethod.GET})
		public String finduser(Model model,@RequestParam(value="username") String username) throws Exception {
			//查询改用户
			UserCustom userCustom = userservice.finduser(username);
			System.out.println(username);
			model.addAttribute("userCustom", userCustom);				
			return "userinfopage";
		}
		
		//用户登录页面
		@RequestMapping(value="/login",method= {RequestMethod.POST,RequestMethod.GET})
		public String finduser(Model model) throws Exception {			
			return "login";
		}
		
		//用户注册页面
		@RequestMapping(value="/registerpage",method= {RequestMethod.POST,RequestMethod.GET})
		public String registerpage() {
			return "register";
		}
		
		//修改个人资料
		@RequestMapping(value="/edituserinfopage",method= {RequestMethod.POST,RequestMethod.GET})
		public String edituserinfopage() {
			return "edituserinfo";
		}
		
		//用户注册
		@RequestMapping(value="/register",method= {RequestMethod.POST,RequestMethod.GET})
		public String register(Model model,String username,String password,String email,String profession,String sex) throws Exception {
			//注册用户
			UserCustom usercustom = new UserCustom();
			usercustom.setUsername(username);
			usercustom.setEmail(email);
			usercustom.setPassword(password);
			usercustom.setProfession(profession);
			usercustom.setSex(sex);			
			userservice.adduser(usercustom);
			String successcmd = "AddUserSuccess";
			model.addAttribute("success", successcmd);
			return "success";
		}
		
		
		//登录输入信息是否合法的校验
		@RequestMapping(value="/inputcheck",method={RequestMethod.POST,RequestMethod.GET})
		public @ResponseBody void inputcheck(Model model,String username,String password,HttpServletRequest request,HttpServletResponse response) throws Exception
		{
			String checkCode = request.getParameter("checkCode"); 
			boolean loginflageusername=false;
			boolean loginflagepassword=false;
			boolean loginflagecheckCode=false;
			//String checkCode = request.getParameter("checkCode");
			if(username!=null) {
				System.out.println(username);
				if(username.equals("")) {
					loginflageusername = false;
				}else {
					loginflageusername = true;
				}
				response.getWriter().write("{\"loginflageusername\":"+loginflageusername+"}");
			}
			if(password!=null) {
				if(password.equals("")) {
					loginflagepassword = false;
				}else {
					loginflagepassword = true;
				}
				response.getWriter().write("{\"loginflagepassword\":"+loginflagepassword+"}");
			}
			if(checkCode!=null) {
				if(checkCode.equals("")) {
					loginflagecheckCode = false;
				}else {
					loginflagecheckCode = true;
				}
				response.getWriter().write("{\"loginflagecheckCode\":"+loginflagecheckCode+"}");
			}
			
			
		}
		
		//登录检验
		@RequestMapping(value="/logincheck",method= {RequestMethod.POST,RequestMethod.GET})
		public  String logincheck(Model model,String username,String password,HttpServletRequest request,HttpServletResponse response) throws Exception {
			response.setCharacterEncoding("utf-8");
			boolean loginflage=false;
			String checkCode = request.getParameter("checkCode");
			if(username!=null && password!=null && checkCode!=null) {
				String piccode = (String) request.getSession().getAttribute("piccode");
				checkCode = checkCode.toUpperCase();
				if(piccode.equals(checkCode)) {
					UserCustom usercustom = new UserCustom();
					usercustom.setUsername(username);
					usercustom.setPassword(password);
					System.out.println("----"+usercustom.getUsername()+"----------"+usercustom.getPassword());
					List<UserCustom> userlist = userservice.finduserlist(usercustom);
					if(userlist.size()==0) {
						loginflage = false;
						response.getWriter().write("{\"loginflage\":"+loginflage+"}");
						return "redirect:/login.action";
					}else {
						
						loginflage = true;
						request.getSession().setAttribute("user", userlist.get(0));
						return "redirect:/findarticlelist.action";
					}
				}
			}
			return "redirect:/login.action";
		}
		
		//退出登录
		@RequestMapping(value="/cancellogin",method= {RequestMethod.POST,RequestMethod.GET})
		public String cancellogin(Model model,HttpServletRequest request) {
			//清空session对象的所有信息
			request.getSession().removeAttribute("username");
			request.getSession().invalidate();//清除 session 中的所有信息 
			return "redirect:/login.action";
		}
		
		//用户信息修改提交
		@RequestMapping(value="/updateuserinfo",method= {RequestMethod.POST,RequestMethod.GET})
		public String updateuserinfo(Model model,String email,String sex,String profession,HttpServletRequest request) throws Exception {
			User user =  (User) request.getSession().getAttribute("user");
			user.setSex(sex);
			user.setEmail(email);
			user.setProfession(profession);
			userservice.updatauser(user.getId(), user);
			String successcmd = "updateuserinfo";
			model.addAttribute("success", successcmd);
			return "success";
		}
	


}
