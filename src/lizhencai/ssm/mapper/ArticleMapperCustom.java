package lizhencai.ssm.mapper;

import java.util.List;

import lizhencai.ssm.po.custom.ArticleCustom;
import lizhencai.ssm.po.custom.UserCustom;




public interface ArticleMapperCustom {
	public List<ArticleCustom> findarticlelist_by_user(UserCustom usercustom)throws Exception;
	
}