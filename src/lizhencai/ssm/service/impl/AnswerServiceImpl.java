package lizhencai.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import lizhencai.ssm.mapper.AnswerMapper;
import lizhencai.ssm.mapper.AnswerMapperCustom;
import lizhencai.ssm.po.Answer;
import lizhencai.ssm.po.custom.AnswerCustom;
import lizhencai.ssm.po.custom.ArticleCustom;
import lizhencai.ssm.service.AnswerService;

public class AnswerServiceImpl implements AnswerService {

	@Autowired
	public AnswerMapper answermapper;
	@Autowired
	public AnswerMapperCustom answermappercustom;
	@Override
	public AnswerCustom finduser(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Answer> findanswerlist(ArticleCustom articlecustom) throws Exception {
		return answermappercustom.findanswerlist(articlecustom);
	}

	@Override
	public void addanswer(AnswerCustom answerCustom) throws Exception {
		answermapper.insert(answerCustom);
	}

	@Override
	public void deleteanswer(Integer id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updataanswer(Integer id, AnswerCustom answerCustom) throws Exception {
		// TODO Auto-generated method stub
		
	}



}
