package lizhencai.ssm.service;


import java.util.List;

import lizhencai.ssm.po.custom.UserFollowCustom;

public interface UserFollowService {
	
	public void insertuserfollow(UserFollowCustom userFollowCustom)throws Exception;
	
	public List<UserFollowCustom> FindUserFollowList(UserFollowCustom userFollowCustom)throws Exception;

}
