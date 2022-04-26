package jdbcs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.naming.NamingException;

import util.ConnectionPool;

public class UserDAO {
	Connection conn=null;
	PreparedStatement pstmt =null;
	ResultSet rset =null;
	
	
	public boolean insert(String userid,String userpw,String username) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO user(userid,userpw,username) VALUES(?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, userpw);
			pstmt.setString(3, username);

			
			int count = pstmt.executeUpdate();
			return (count > 0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
	
	public int exists(String userid) 
			throws NamingException, SQLException{
		int result=-1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset =null;
		try {
			String sql = "SELECT userid FROM user WHERE userid = ?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userid);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result=1;
				return result;
			}else {
				result=0;
				return result;
			}
							
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}		
	}
	
	public int login(String userid,String userpw) 
			throws NamingException, SQLException{
		int result=-1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset =null;
		try {
			String sql = "SELECT userid,userpw FROM user WHERE userid = ?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userid);
			rset = pstmt.executeQuery();
			if(!rset.next()) {
				result=1;
				return result;
			}else if(!userpw.equals(rset.getString("userpw"))) {
				result=2;
			}else {
				result=3;
			}
			
			return result;
							
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}		
	}
	

}
