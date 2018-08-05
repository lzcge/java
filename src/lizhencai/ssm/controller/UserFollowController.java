package lizhencai.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lizhencai.ssm.po.User;
import lizhencai.ssm.po.custom.UserFollowCustom;
import lizhencai.ssm.service.UserFollowService;
import lizhencai.ssm.service.impl.UserFollowServiceImpl;

@Controller
public class UserFollowController {
	
	@Autowired
	public UserFollowService userfollowservice;

	//添加关注用户
	@RequestMapping(value="/insertUserFollow",method= {RequestMethod.POST,RequestMethod.GET})
	public String InsertUserFollow(Model model,String follow_username,HttpServletRequest request) throws Exception {
		UserFollowCustom userFollowCustom = new UserFollowCustom();
		//获取当前用户的信息
		User user =  (User) request.getSession().getAttribute("user");
		//生成需要添加关注的对象
		//添加被关注对象的用户名
		userFollowCustom.setFollow_username(follow_username);
		userFollowCustom.setUser_id(user.getId());
		userfollowservice.insertuserfollow(userFollowCustom);
		String successcmd = "userfollowsuccess";
		//返回操作成功标志
		model.addAttribute("success", successcmd);
		return "success";
	}
	
	//查找所有关注的用户
	@RequestMapping(value="/FindUserFollowList",method= {RequestMethod.POST,RequestMethod.GET})
	public String FindUserFollowList(Model model,HttpServletRequest request) throws Exception {
		User user =  (User) request.getSession().getAttribute("user");
		Integer user_id = user.getId();
		UserFollowCustom userFollowCustom = new UserFollowCustom();
		userFollowCustom.setUser_id(user_id);
		List<UserFollowCustom> userfollowlist =  userfollowservice.FindUserFollowList(userFollowCustom);
		model.addAttribute("userfollowlist", userfollowlist);
		return "userfollow";
	}
}
