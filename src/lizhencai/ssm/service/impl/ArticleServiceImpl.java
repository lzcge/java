package lizhencai.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import lizhencai.ssm.mapper.ArticleMapper;
import lizhencai.ssm.mapper.ArticleMapperCustom;
import lizhencai.ssm.po.custom.ArticleCustom;
import lizhencai.ssm.po.custom.UserCustom;
import lizhencai.ssm.service.ArticleService;

public class ArticleServiceImpl implements ArticleService {
	
	@Autowired
	public ArticleMapper articlemapper;
	@Autowired
	public ArticleMapperCustom articlemappercustom;
	@Override
	public ArticleCustom finduser(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ArticleCustom> findarticlelist() throws Exception {
		return articlemapper.findarticlelist();
	}

	@Override
	public void addarticle(ArticleCustom articleCustom) throws Exception {
		articlemapper.insert(articleCustom);
	}

	@Override
	public void deletearticle(Integer id) throws Exception {
		articlemapper.deleteByPrimaryKey(id);
	}

	@Override
	public void updataarticle(Integer id, ArticleCustom articleCustom) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ArticleCustom> findarticlelist_by_user(UserCustom usercustom) throws Exception {
		return articlemappercustom.findarticlelist_by_user(usercustom);
	}

}
