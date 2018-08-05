package lizhencai.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import lizhencai.ssm.mapper.UserMapper;
import lizhencai.ssm.mapper.UserMapperCustom;
import lizhencai.ssm.po.User;
import lizhencai.ssm.po.custom.UserCustom;
import lizhencai.ssm.service.UserService;

public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapperCustom usermappercustom;
	@Autowired
	private UserMapper usermapper;

	@Override
	public UserCustom finduser(String username) throws Exception {
		return usermappercustom.searchuser(username);
	}

	@Override
	public List<UserCustom> finduserlist(UserCustom usercustom) throws Exception {
		return usermappercustom.finduserlist(usercustom);
	}

	@Override
	public void adduser(UserCustom usercustom) throws Exception {
		usermapper.insert(usercustom);
		
	}

	@Override
	public void deleteuser(Integer id) throws Exception {
		usermapper.deleteByPrimaryKey(id);
	}

	@Override
	public void updatauser(Integer id,User user) throws Exception {
		user.setId(id);
		usermapper.updateByPrimaryKey(user);
		//updateByPrimaryKeySelective
		//usermapper.updateuser(usercustom);
	}
	
	
	

}
