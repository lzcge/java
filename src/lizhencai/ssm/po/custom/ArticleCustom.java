package lizhencai.ssm.po.custom;

import java.util.List;

import lizhencai.ssm.po.Article;

/**
 * 
 * 对帖子的扩展包装类
 * @author DELL
 *
 */
public class ArticleCustom extends Article {
	public List<Article> articlelist;

	public List<Article> getArticlelist() {
		return articlelist;
	}

	public void setArticlelist(List<Article> articlelist) {
		this.articlelist = articlelist;
	}
	
}
