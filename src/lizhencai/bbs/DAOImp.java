package lizhencai.bbs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;







public class DAOImp {
	
	//插入帖子
	
	public void SaveArticle(Message message) {
		String sql = " insert into article (id,title,cont,pdate,username)values (?,?,?,now(),?)";
		Connection connection = JDBC.getconnection();
		PreparedStatement preparedStatement=null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, message.getId());
			preparedStatement.setString(2, message.getTitle());
			preparedStatement.setString(3, message.getCont());
			preparedStatement.setString(4, message.getUsername());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBC.close(connection, preparedStatement, null);
			
		}
		

	}

	
	//插入评论内容
	
	public void SaveAnswer(answermessage an) {
		String sql = "insert into saveanswer (id,answer,username) values(?,?,?)";
		Connection connection = JDBC.getconnection();
		PreparedStatement preparedStatement = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, an.getId());
			//preparedStatement.setString(2, an.getTitle());
			preparedStatement.setString(2, an.getContent());
			preparedStatement.setString(3, an.getUsername());
			preparedStatement.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally{
			JDBC.close(connection, preparedStatement, null);
			
		}
	}

	
	//获取全部帖子的内容
	
	public List<Message> getmessage() {
		List<Message> list = new ArrayList<Message>();
		String sql = "select * from article ";
		Connection connection = JDBC.getconnection();
		PreparedStatement preparedStatement=null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Message message = new Message();
				message.setCont(resultSet.getString("cont"));
				message.setId(resultSet.getString("id"));
				message.setTitle(resultSet.getString("title"));
				message.setPdate(resultSet.getString("pdate"));
				list.add(message);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBC.close(connection, preparedStatement, null);
			
		}
		return list;
	}
	
	
	//获取搜索的特定帖子的内容
	public List<Message> getfindmessage(String title) {
		List<Message> list = new ArrayList<Message>();
		String sql = "select * from article where title='"+title+"'";
		Connection connection = JDBC.getconnection();
		PreparedStatement preparedStatement=null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Message message = new Message();
				message.setCont(resultSet.getString("cont"));
				message.setId(resultSet.getString("id"));
				message.setTitle(resultSet.getString("title"));
				message.setPdate(resultSet.getString("pdate"));
				list.add(message);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBC.close(connection, preparedStatement, null);
			
		}
		return list;
	}
	
	
	//获取搜索的用户自身帖子的内容
	public List<Message> getselfmessage(String username) {
		List<Message> list = new ArrayList<Message>();
		String sql = "select * from article where username='"+username+"'";
		Connection connection = JDBC.getconnection();
		PreparedStatement preparedStatement=null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Message message = new Message();
				message.setCont(resultSet.getString("cont"));
				message.setId(resultSet.getString("id"));
				message.setTitle(resultSet.getString("title"));
				message.setPdate(resultSet.getString("pdate"));
				list.add(message);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBC.close(connection, preparedStatement, null);
			
		}
		return list;
	}
	
	//删除一条帖子
	public void deletearticle(String id) {
		//List<Message> list = new ArrayList<Message>();
		String sql = "delete from article where id='"+id+"'";
		Connection connection = JDBC.getconnection();
		PreparedStatement preparedStatement=null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
//			ResultSet resultSet = preparedStatement.executeQuery();
//			while(resultSet.next()) {
//				Message message = new Message();
//				message.setCont(resultSet.getString("cont"));
//				message.setId(resultSet.getString("id"));
//				message.setTitle(resultSet.getString("title"));
//				message.setPdate(resultSet.getString("pdate"));
//				list.add(message);
//				
//			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBC.close(connection, preparedStatement, null);
			
		}
		//return list;
	}
	
	
	
	//获取评论内容
	public List<answermessage> getanswermessage(String id){
		List<answermessage> list = new ArrayList<answermessage>();
		String sql = "select * from saveanswer where id='"+id+"'";
		Connection connection = JDBC.getconnection();
		PreparedStatement preparedStatement=null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				answermessage an = new answermessage();
				an.setId(id);
				//an.setTitle(resultSet.getString("title"));
				an.setUsername(resultSet.getString("username"));
				an.setContent(resultSet.getString("answer"));
				list.add(an);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBC.close(connection, preparedStatement, null);
			
		}
		return list;
	}
	
	
	public List<Message> pageList(Integer start, Integer pageSize) {
		String sql = "select * from article limit ?,?";
		//List list = new ArrayList();
		List<Message> list = new ArrayList<Message>();
		//String sql = "select * from article ";
		Connection connection = JDBC.getconnection();
		PreparedStatement preparedStatement=null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, start);
			preparedStatement.setInt(2, pageSize);
			//preparedStatement.setString(1,String.valueOf(start));
			//preparedStatement.setString(2, an.getTitle());
			//preparedStatement.setString(2, String.valueOf(pageSize));
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Message message = new Message();
				message.setCont(resultSet.getString("cont"));
				message.setId(resultSet.getString("id"));
				message.setTitle(resultSet.getString("title"));
				message.setPdate(resultSet.getString("pdate"));
				list.add(message);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBC.close(connection, preparedStatement, null);
			
		}
		return list;
		
		
	}
	
	
	public Integer count() {
		String sql = "select count(id) as count from article";
		
		Connection connection = JDBC.getconnection();
		PreparedStatement preparedStatement=null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			if(resultSet.next()) {
				int count = resultSet.getInt(1);
				return count;
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBC.close(connection, preparedStatement, null);
			
		}
		return null;
	}

	

}
