package lizhencai.ssm.mapper;

import java.util.List;

import lizhencai.ssm.po.Answer;
import lizhencai.ssm.po.custom.ArticleCustom;

public interface AnswerMapperCustom {
	
	public List<Answer> findanswerlist(ArticleCustom articlecustom) throws Exception;
   
}