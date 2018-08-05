package lizhencai.ssm.mapper;

import java.util.List;

import lizhencai.ssm.po.custom.UserFollowCustom;

public interface UserFollowMapperCustom {
	
	public void insertuserfollow(UserFollowCustom userFollowCustom)throws Exception; 
	
	public List<UserFollowCustom> FindUserFollowList(UserFollowCustom userFollowCustom)throws Exception;
}