package lizhencai.ssm.service;

import java.util.List;

import lizhencai.ssm.po.Answer;
import lizhencai.ssm.po.custom.AnswerCustom;
import lizhencai.ssm.po.custom.ArticleCustom;



public interface AnswerService {
	public AnswerCustom finduser(Integer id)throws Exception; 
	
	public List<Answer> findanswerlist(ArticleCustom articlecustom)throws Exception;
	
	public void addanswer(AnswerCustom answerCustom)throws Exception;
	
	public void deleteanswer(Integer id)throws Exception;
	
	public void updataanswer(Integer id,AnswerCustom answerCustom)throws Exception;

}
