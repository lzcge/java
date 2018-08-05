package lizhencai.ssm.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lizhencai.ssm.po.Answer;
import lizhencai.ssm.po.User;
import lizhencai.ssm.po.custom.AnswerCustom;
import lizhencai.ssm.po.custom.ArticleCustom;
import lizhencai.ssm.service.AnswerService;

@Controller
public class AnswerController {
	@Autowired
	public AnswerService answerservice;
	
	@RequestMapping("/answer")
	public String answer(Model model,HttpServletRequest request) throws Exception {
		//获取所有的评论
		String id = request.getParameter("id");
		ArticleCustom articlecustom = new ArticleCustom();
		articlecustom.setId(Integer.valueOf(id));
		List<Answer> answerlist = answerservice.findanswerlist(articlecustom);
		//数据的回显
		model.addAttribute("answerlist", answerlist);
		return "answerlist";
	}
	
	@RequestMapping("/addanswer")
	public String addanswer(Model model,String answercont,HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		User user =  (User) request.getSession().getAttribute("user");
		AnswerCustom answercustom = new AnswerCustom();
		ArticleCustom articlecustom = new ArticleCustom();
		answercustom.setArticleId(Integer.valueOf(id));
		answercustom.setUsername(String.valueOf(user.getUsername()));
		answercustom.setAnswercont(answercont);
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		answercustom.setTime(sf.format(date));
		//往数据库中写入评论内容
		answerservice.addanswer(answercustom);
		//获取该条帖子下的所有评论
		articlecustom.setId(Integer.valueOf(id));
		List<Answer> answerlist = answerservice.findanswerlist(articlecustom);
		//数据的回显
		model.addAttribute("answerlist", answerlist);
		return "answerlist";
	}

}
