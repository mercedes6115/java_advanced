package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.naming.NamingException;

import util.ConnectionPool;

public class AdminDAO {
	
	public int insert(String aid, String apw)
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO admin VALUES (?,?)";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, aid);
				pstmt.setString(2, apw);
			int result = pstmt.executeUpdate();
			
			return result>0? 1:0;			
			
		} finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}

	public int login(String aid, String apw) 
			throws NamingException, SQLException{
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT  aid, apw FROM admin WHERE aid=?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,aid);
			rs = pstmt.executeQuery();
			if(!rs.next()) return 1; //가져온게 없으면 next() 다음이 있는가? --아이디가 없는 경우.
			if(!apw.equals(rs.getString("apw"))) return 2;   //--암호를 틀린경우.
			return 0; //성공케이스
		}finally {
			if(rs !=null) rs.close();
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		}
	}
}
