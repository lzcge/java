package lizhencai.ssm.mapper;

import java.util.List;
import lizhencai.ssm.po.User;
import lizhencai.ssm.po.UserExample;
import lizhencai.ssm.po.custom.UserCustom;

import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(UserCustom usercustom);

    int insertSelective(User record);

    List<UserCustom> selectUserList(UserCustom usercustom);

    User selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExampleWithBLOBs(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}