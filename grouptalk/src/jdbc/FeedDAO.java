package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class FeedDAO {
	
	public boolean insert(String uid, String ucontent, String fname) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO feed(id,content,imgs) VALUES(?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			pstmt.setString(2, ucontent);
			pstmt.setString(3, fname);
			
			int count = pstmt.executeUpdate();
			return (count >0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}		
	}
	
	public ArrayList<FeedDTO> getList() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;		
		try {
			String sql="SELECT * FROM feed ORDER BY ts DESC";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			ArrayList<FeedDTO> feeds = new ArrayList<FeedDTO>();
			while(rset.next()) {
				feeds.add(new FeedDTO(rset.getString("id"),
									  rset.getString("content"),
									  rset.getString("ts"),
									  rset.getString("imgs")));	
			}
			return feeds;			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}

}