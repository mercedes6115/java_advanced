package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;


import util.ConnectionPool;

public class BoardDAO {
	
	Connection conn=null;
	PreparedStatement pstmt =null;
	ResultSet rset =null;
	
	public ArrayList<BoardDTO> getList() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM freeboard";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			ArrayList<BoardDTO> boards = new ArrayList<BoardDTO>();
			while(rset.next()) {
				boards.add(new BoardDTO(rset.getString("bid"),
									  rset.getString("btitle"),
									  rset.getString("bcon"),
									  rset.getString("buser"),
									  rset.getString("bdate"),
									  rset.getString("bimg"),
									  rset.getString("bavailable")));
			}
			return boards;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
	
	public ArrayList<BoardDTO> getList5() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM freeboard ORDER BY bdate DESC LIMIT 5";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			ArrayList<BoardDTO> boards = new ArrayList<BoardDTO>();
			while(rset.next()) {
				boards.add(new BoardDTO(rset.getString("bid"),
						rset.getString("btitle"),
						rset.getString("bcon"),
						rset.getString("buser"),
						rset.getString("bdate"),
						rset.getString("bimg"),
						rset.getString("bavailable")));
			}
			return boards;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
	
	public boolean insert(String bid,String btitle,String bcon,String buser,String bdate,String bimg, String bavailable) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO freeboard(bid,btitle,bcon,buser,bdate,bimg,bavailable) VALUES(?,?,?,?,?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, null);
			pstmt.setString(2, btitle);
			pstmt.setString(3, bcon);
			pstmt.setString(4, buser);
			pstmt.setString(5, LocalDate.now().toString());
			pstmt.setString(6, bimg);
			pstmt.setNString(7, bavailable);
			
			int count = pstmt.executeUpdate();
			return (count >0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}

	public BoardDTO getDetail(String bcon) throws NamingException,SQLException{

		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM freeboard WHERE bavailable is null and bcon = ?";	
			conn = ConnectionPool.get();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bcon);
			rset = pstmt.executeQuery();
			rset.next();
			String id = rset.getString(1);
			String title = rset.getString(2);
			String con = rset.getString(3);
			String user = rset.getString(4);
			String date = rset.getString(5);
			String img = rset.getString(6);
			String available = rset.getString(7);

			
			BoardDTO board = new BoardDTO(id,title,con,user,date,img, available);
			return board;
		}	
		finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}	
	}
	
	
	public ArrayList<BoardDTO> getpageList(int startRow, int pageSize) 
			throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM freeboard WHERE bavailable is null ORDER BY bid desc limit ?,?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow-1);
			pstmt.setInt(2, pageSize);
			rset = pstmt.executeQuery();
			ArrayList<BoardDTO> boards = new ArrayList<BoardDTO>();
			while(rset.next()) {
				boards.add(new BoardDTO(rset.getString("bid"),
									  rset.getString("btitle"),
									  rset.getString("bcon"),
									  rset.getString("buser"),
									  rset.getString("bdate"),
									  rset.getString("bimg"),
									  rset.getNString("bavailable")));
			}
			return boards;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
	
	public ArrayList<BoardDTO> getmyList(String uname)
			throws NamingException, SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
				try {
					String sql = "SELECT * FROM freeboard WHERE bavailable is NULL and buser=? ORDER BY bdate DESC";
					 
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, uname);
					rset = pstmt.executeQuery();  // db에서 뭉텅이로 긁어옴
					
					ArrayList<BoardDTO> boards = new ArrayList<BoardDTO>();
					// 받은것중에서 하나씩 제거하면서 안의 내용이 있다면 안의 내용을 꺼내와라 
					// DTO 클래스를 객체로 만들어서 받아온 값들을 ArrayList 형태의 뭉텅이로  products에 넣어서 가지고나옴
					while(rset.next()) {
						boards.add(new BoardDTO(rset.getString("bid"),
													rset.getString("btitle"),
													rset.getString("bcon"),
													rset.getString("buser"),
													rset.getString("bdate"),
													rset.getString("bimg"),
													rset.getString("bavailable")));
					}
					return boards;
					
				}finally {
					if(rset!=null) rset.close();
					if(conn!=null) conn.close();
					if(pstmt!=null) pstmt.close();
				}
			}
	
	public boolean update(int bid, String btitle, String bcon, String bimg) 
			throws NamingException, SQLException{
		try {
			String sql = "UPDATE freeboard SET btitle = ?, bcon=?, bimg=? WHERE bavailable is null and bid=?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, btitle);
				pstmt.setString(2, bcon);
				pstmt.setString(3, bimg);
				pstmt.setInt(4, bid);
				
				
				
			int res= pstmt.executeUpdate(); //성공적으로 반환이되면 0 이상의 수를 반환
			return res>0? true:false;
			
			
		} finally {
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		}
	}
	
	
	public boolean delete(int bid) 
			throws NamingException, SQLException{
		try {
			String sql = "UPDATE freeboard SET bavailable=1 WHERE bid=?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, bid);
			int res= pstmt.executeUpdate(); //성공적으로 반환이되면 0 이상의 수를 반환
			return res>0? true:false;
			
		} finally {
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		}
	}
	
	public BoardDTO getContent(int bid)
			throws NamingException, SQLException{
			
				try {
					String sql = "SELECT * FROM freeboard WHERE bid=? ";
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
						pstmt.setInt(1, bid);
					rset = pstmt.executeQuery();
						// 받은것중에서 하나씩 제거하면서 안의 내용이 있다면 안의 내용을 꺼내와라 
						// DTO 클래스를 객체로 만들어서 받아온 값들을 ArrayList 형태의 뭉텅이로  products에 넣어서 가지고나옴
						rset.next();
						String id = rset.getString(1);
						String btitle = rset.getString(2);
						String bcon = rset.getString(3);
						String buser = rset.getString(4); 
						String bdate = rset.getString(5);
						String bimg = rset.getString(6);
						String bavailable = rset.getNString(7);
						
						BoardDTO boards = new BoardDTO(id,btitle,bcon,buser,bdate,bimg,bavailable);
						return boards;
						
					}finally {
						if(rset!=null) rset.close();
						if(conn!=null) conn.close();
						if(pstmt!=null) pstmt.close();
					}
			}
	
	public int getTodayPost(String bdate) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		try {
			String sql = "SELECT COUNT(*) FROM freeboard WHERE bdate=?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, bdate);
			rs = pstmt.executeQuery();
			
			rs.next();
			result = rs.getInt(1);
	

		} finally {
			if(rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		
		return result;
	}
}
