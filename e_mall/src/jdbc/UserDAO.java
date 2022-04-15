package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.naming.NamingException;

import util.ConnectionPool;

public class UserDAO {

	
	public boolean insert(String uid,String upw,String uname,String ugender,String ubirth,String uemail,String uphone,String uaddr) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset =null;
		
		try {
			String sql = "INSERT INTO user(uid,upw,uname,ugender,ubirth,uemail,uphone,uaddr,uregiday) VALUES(?,?,?,?,?,?,?,?,?)";		
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
			
			int count = pstmt.executeUpdate();
			return (count >0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
	
	public int login(String uid, String upw) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset =null;
		
		try {
			
			String sql = "SELECT uid,upw FROM user WHERE uid=?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			rset = pstmt.executeQuery();
			
			if(!rset.next()) return 1;
			if(!upw.equals(rset.getString("upw"))) return 2;
			return 0;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
		
	}
}
