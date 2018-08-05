package lizhencai.ssm.mapper;

import java.util.List;


import lizhencai.ssm.po.custom.UserCustom;

public interface UserMapperCustom {
	
	public List<UserCustom> finduserlist(UserCustom usercustom) throws Exception;
	
	public UserCustom searchuser(String username)throws Exception; 
}