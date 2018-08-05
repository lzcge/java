package lizhencai.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;


import lizhencai.ssm.mapper.UserFollowMapperCustom;
import lizhencai.ssm.po.custom.UserFollowCustom;
import lizhencai.ssm.service.UserFollowService;


public class UserFollowServiceImpl implements UserFollowService {
	
	@Autowired
	public UserFollowMapperCustom userfollowmappercustom;
	
	@Override
	public void insertuserfollow(UserFollowCustom userFollowCustom) throws Exception {
		userfollowmappercustom.insertuserfollow(userFollowCustom);	
	}
	
	@Override
	public List<UserFollowCustom> FindUserFollowList(UserFollowCustom userFollowCustom) throws Exception {
		return userfollowmappercustom.FindUserFollowList(userFollowCustom);
	}

}
