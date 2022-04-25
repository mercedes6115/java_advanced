package jdbcs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class MemoAppDAO {
	
	Connection conn=null;
	PreparedStatement pstmt =null;
	ResultSet rset =null;
	
	
	public boolean insert(String userid,String mtitle,String mcon) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO memo(userid,mtitle,mcon,mdate,mdone,mid) VALUES(?,?,?,?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, mtitle);
			pstmt.setString(3, mcon);
			pstmt.setString(4, LocalDate.now().toString());
			pstmt.setString(5, "1");
			pstmt.setString(6, null);
			
			int count = pstmt.executeUpdate();
			return (count > 0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
	
	public ArrayList<MemoAppDTO> getList() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM memo WHERE userid='test' and mdone='1' ORDER BY mdate DESC";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			ArrayList<MemoAppDTO> memos = new ArrayList<MemoAppDTO>();
			while(rset.next()) {
				memos.add(new MemoAppDTO(rset.getString("userid"),
									  	rset.getString("mtitle"),
									  	rset.getString("mcon"),
									  	rset.getString("mdate"),
									  	rset.getString("mdone"),
									  	rset.getString("mid")));
			}
			return memos;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}


	public boolean delete(String mid) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "UPDATE memo SET mdone = '0' WHERE mid = ?";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,mid);
			
			int count = pstmt.executeUpdate();
			return (count > 0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
	
	
	public ArrayList<MemoAppDTO> getdelList() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM memo WHERE mdone='0' ORDER BY mdate DESC";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			ArrayList<MemoAppDTO> memos = new ArrayList<MemoAppDTO>();
			while(rset.next()) {
				memos.add(new MemoAppDTO(rset.getString("userid"),
									  	rset.getString("mtitle"),
									  	rset.getString("mcon"),
									  	rset.getString("mdate"),
									  	rset.getString("mdone"),
									  	rset.getString("mid")));
			}
			return memos;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
	
	public boolean restore(String mdone,String mid) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "UPDATE memo SET mdone = '1' WHERE mdone = ? AND mid = ?";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,mdone);
			pstmt.setString(2,mid);
			
			int count = pstmt.executeUpdate();
			return (count > 0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
}
