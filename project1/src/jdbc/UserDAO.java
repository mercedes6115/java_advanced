package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.naming.NamingException;

import util.ConnectionPool;

public class UserDAO {
	
	public int insert(String uid, String upw, String uname, String ugender, String ubirth, String uemail, String uphone,
			String uaddr)
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO user VALUES (?,?,?,?,?,?,?,?,?)";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, uid);
				pstmt.setString(2, upw);
				pstmt.setString(3, uname);
				pstmt.setString(4, ugender);
				pstmt.setString(5, ubirth);
				pstmt.setString(6, uemail);
				pstmt.setString(7, uphone);
				pstmt.setString(8, uaddr);
				pstmt.setString(9, LocalDate.now().toString());
			int result = pstmt.executeUpdate();
			
			return result>0? 1:0;			
			
		} finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}
	
	public int ainsert(String aid, String apw, String aname, String agender, String abirth, String aemail, String aphone,
			String aaddr)
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO admin VALUES (?,?,?,?,?,?,?,?,?)";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, aid);
				pstmt.setString(2, apw);
				pstmt.setString(3, aname);
				pstmt.setString(4, agender);
				pstmt.setString(5, abirth);
				pstmt.setString(6, aemail);
				pstmt.setString(7, aphone);
				pstmt.setString(8, aaddr);
				pstmt.setString(9, LocalDate.now().toString());
			int result = pstmt.executeUpdate();
			
			return result>0? 1:0;			
			
		} finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}

	public int login(String uid, String upw) 
			throws NamingException, SQLException{
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT uid, upw FROM user WHERE uid=?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,uid);
			rs = pstmt.executeQuery();
			if(!rs.next()) return 1; //가져온게 없으면 next() 다음이 있는가? --아이디가 없는 경우.
			if(!upw.equals(rs.getString("upw"))) return 2;   //--암호를 틀린경우.
			return 0; //성공케이스
		}finally {
			if(rs !=null) rs.close();
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		}
	}
	
	
	public UserDTO getName(String uid) 
			throws NamingException, SQLException{
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				try {
					String sql = "SELECT * FROM user WHERE uid=?";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					// 위의 WHERE 절에서 ? 에 값을 넣어주기 위해서
						pstmt.setString(1, uid);
					rs = pstmt.executeQuery();  // db에서 뭉텅이로 긁어옴
					
					rs.next();
					
					String id = rs.getString(1);
					String upw = rs.getString(2);
					String uname = rs.getString(3);
					String ugender = rs.getString(4);
					String ubirth = rs.getString(5);
					String uemail = rs.getString(6);
					String uphone = rs.getString(7);
					String uaddr = rs.getString(8);
					String uregiday = rs.getString(9);
					
					UserDTO user = new UserDTO(id, upw,uname,ugender,ubirth, uemail,uphone,uaddr,uregiday);
					return user;
				}finally {
					if(rs!=null) rs.close();
					if(conn!=null) conn.close();
					if(pstmt!=null) pstmt.close();
				}
			}
	
	
	public boolean update(String uid, String upw, String uname, String ugender, String ubirth, String uemail, String uphone,
			String uaddr)
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "UPDATE user SET upw=?, uname=?,ugender=?,ubirth=?,uemail=?,uphone=?,uaddr=? WHERE uid=?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, upw);
				pstmt.setString(2, uname);
				pstmt.setString(3, ugender);
				pstmt.setString(4, ubirth);
				pstmt.setString(5, uemail);
				pstmt.setString(6, uphone);
				pstmt.setString(7, uaddr);
				pstmt.setString(8, uid);
			int result = pstmt.executeUpdate();
			
			return result>0? true:false;			
			
		} finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}
			
	   public String findId(String uname, String uphone) {
		      String uid = null;
		      
		      Connection conn = null;
		      PreparedStatement pstmt = null;
		      ResultSet rs = null;
		      
		      try {
		         String sql = "select uid from user where uname=? and uphone=? ";
		         
		         conn = ConnectionPool.get();
		         pstmt = conn.prepareStatement(sql);         
		         
		         	pstmt.setString(1, uname);
		         	pstmt.setString(2, uphone);
		         
		         rs = pstmt.executeQuery();
		         
		         if(rs.next()) {
		            uid = rs.getString("uid");
		         }
		            
		      } catch (Exception e) {
		         e.printStackTrace();
		      }
		      return uid;
		   }
	   
	   public int delete(String uid) throws NamingException, SQLException{
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				String sql = "DELETE FROM user WHERE uid=?";
				conn = ConnectionPool.get();
				pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, uid);
				int result = pstmt.executeUpdate();
				
				return result;			
				
			} finally {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}
			
		}
	   
	   public int multiDelete(String[] uids) throws NamingException, SQLException {
			Connection conn = null;
			PreparedStatement pstmt = null;
			int result = 0;
			int[] cnt = null;
			
			try {
				String sql = "DELETE FROM user WHERE uid=?";
				conn = ConnectionPool.get();
				
				pstmt = conn.prepareStatement(sql);
				for (int i = 0; i < uids.length; i++) {
					pstmt.setString(1, uids[i]);
					pstmt.addBatch();
				}
				cnt = pstmt.executeBatch();
				
				for (int i = 0; i < cnt.length; i++) {
					if(cnt[i] == -2) {
						result++;
					}
				}
				
				if(uids.length == result) {
					conn.commit();
				}else {
					conn.rollback();
				}
			} finally {
				
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}
			return result;
		}
}

