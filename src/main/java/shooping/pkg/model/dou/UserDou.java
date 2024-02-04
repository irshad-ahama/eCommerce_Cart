package shooping.pkg.model.dou;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import shooping.pkg.model.Users;

public class UserDou {
	private Connection con;
	private  String query;
	private PreparedStatement pst;
	private ResultSet rs;
	public UserDou(Connection con) {
		
		this.con = con;
	}
	public Users userLogin(String email,String password) {
		Users user1=null;
		try {
			query="select * from user where email=? and password=?";
			pst=this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, password);
			
			rs=pst.executeQuery();
			if(rs.next()) {
				user1=new Users();
				user1.setId(rs.getInt("id"));
				user1.setId(rs.getInt("name"));
				user1.setId(rs.getInt("email"));
				user1.setId(rs.getInt("password"));
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return user1;
	}
	

}
