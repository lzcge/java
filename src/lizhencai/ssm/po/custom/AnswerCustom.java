package lizhencai.ssm.po.custom;

import java.util.List;

import lizhencai.ssm.po.Answer;

/**
 * 
 * 对评论的扩展包装类
 * @author DELL
 *
 */
public class AnswerCustom extends Answer {
	public List<Answer> answerlist;

	public List<Answer> getAnswerlist() {
		return answerlist;
	}

	public void setAnswerlist(List<Answer> answerlist) {
		this.answerlist = answerlist;
	}
	
}
