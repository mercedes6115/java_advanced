package jdbcs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.naming.NamingException;

import util.ConnectionPool;

public class CommentDAO {
	Connection conn=null;
	PreparedStatement pstmt =null;
	ResultSet rset =null;
	
	
	
	public boolean insert(String ccon) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO comment(cid,ccon,cdate) VALUES(?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, null);
			pstmt.setString(2, ccon);
			pstmt.setString(3, LocalDate.now().toString());			
			int count = pstmt.executeUpdate();
			return (count > 0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
	
	
	public ResultSet display() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset =null;
		String comments=null;
		try {
			String sql = "SELECT ccon FROM comment";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			
			return rset;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}

}
