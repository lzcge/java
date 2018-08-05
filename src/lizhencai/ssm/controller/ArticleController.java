package lizhencai.ssm.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lizhencai.ssm.po.User;
import lizhencai.ssm.po.custom.ArticleCustom;
import lizhencai.ssm.po.custom.UserCustom;
import lizhencai.ssm.service.ArticleService;

@Controller
public class ArticleController {
	
	@Autowired
	public ArticleService articleservice;
	@RequestMapping(value="/findarticlelist",method= {RequestMethod.POST,RequestMethod.GET})
	public String findarticlelist(Model model) throws Exception {	
		List<ArticleCustom> articlecustomlist = articleservice.findarticlelist();
		model.addAttribute("articlecustomlist", articlecustomlist);
		return "article";
	}
	
	
	//发帖
	@RequestMapping(value="/addarticle",method= {RequestMethod.POST,RequestMethod.GET})
	public String addarticle(Model model,String title,String content,HttpServletRequest request)throws Exception{
		ArticleCustom articlecustom = new ArticleCustom();
		User user =  (User) request.getSession().getAttribute("user");
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		articlecustom.setContent(content);
		articlecustom.setTime(sf.format(date));
		articlecustom.setTitle(title);
		articlecustom.setUsername(user.getUsername());
		articleservice.addarticle(articlecustom);
		//定义一个标记，用于操作成功页面的操作判断
		String successcmd = "AddArticleSuccess";
		model.addAttribute("success", successcmd);
		return "success";
	}
	
	
	//查询某个用户的所有帖子
	@RequestMapping(value="/findarticle_by_user",method= {RequestMethod.POST,RequestMethod.GET})
	public String findarticle_by_user(Model model,HttpServletRequest request) throws Exception {
		User user =  (User) request.getSession().getAttribute("user");
		UserCustom usercustom = new UserCustom();
		usercustom.setUsername(user.getUsername());
		List<ArticleCustom> articlelist =  articleservice.findarticlelist_by_user(usercustom);
		model.addAttribute("articlelist", articlelist);
		 return "myarticlepage";
	}
	
	//删除某个帖子
	@RequestMapping(value="/deletearticle",method= {RequestMethod.POST,RequestMethod.GET})
	public String deletearticle(Model model,@RequestParam("id") String id) throws Exception {
		Integer articleid = Integer.valueOf(id);
		articleservice.deletearticle(articleid);
		//重新跳转到查询用户所有帖子的页面
		return "redirect:/findarticle_by_user.action";
	}
	
	//转到发帖的编辑页面
	@RequestMapping(value="/sendarticle",method= {RequestMethod.POST,RequestMethod.GET})
	public String sendarticle(Model model) {
		return "editArticle";
	}
	
	

}
