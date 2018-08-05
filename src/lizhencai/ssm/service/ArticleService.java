package lizhencai.ssm.service;

import java.util.List;


import lizhencai.ssm.po.custom.ArticleCustom;
import lizhencai.ssm.po.custom.UserCustom;



public interface ArticleService {
	public ArticleCustom finduser(Integer id)throws Exception; 
	
	public List<ArticleCustom> findarticlelist()throws Exception;
	
	public List<ArticleCustom> findarticlelist_by_user(UserCustom usercustom)throws Exception;
	
	public void addarticle(ArticleCustom articleCustom)throws Exception;
	
	public void deletearticle(Integer id)throws Exception;
	
	public void updataarticle(Integer id,ArticleCustom articleCustom)throws Exception;
	

}
