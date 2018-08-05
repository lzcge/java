package lizhencai.ssm.service;

import java.util.List;

import lizhencai.ssm.po.User;
import lizhencai.ssm.po.custom.UserCustom;

public interface UserService {
	
	public UserCustom finduser(String username)throws Exception; 
	
	public List<UserCustom> finduserlist(UserCustom usercustom)throws Exception;
	
	public void adduser(UserCustom usercustom)throws Exception;
	
	public void deleteuser(Integer id)throws Exception;
	
	public void updatauser(Integer id,User user)throws Exception;
	
	

}
