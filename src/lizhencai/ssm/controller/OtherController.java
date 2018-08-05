package lizhencai.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lizhencai.ssm.po.User;
import lizhencai.ssm.po.custom.UserCustom;
import lizhencai.ssm.service.UserService;

@Controller
public class OtherController {
	@Autowired
	private UserService userservice;
	
	//进入个人管理中心
	@RequestMapping(value="/managerpage",method= {RequestMethod.POST,RequestMethod.GET})
	public String managerpage(Model model,HttpServletRequest request) throws Exception {
		//得到当前用户的信息
		User user =  (User) request.getSession().getAttribute("user");
		UserCustom userCustom = userservice.finduser(user.getUsername());
		model.addAttribute("userCustom", userCustom);	
		return "managerpage";
	}
	
	

}
