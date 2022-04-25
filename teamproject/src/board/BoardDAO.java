package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import board.*;

import util.ConnectionPool;

public class BoardDAO {
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
				boards.add(new BoardDTO(rset.getString("fid"),
									  rset.getString("ftitle"),
									  rset.getString("fcon"),
									  rset.getString("fuser"),
									  rset.getString("fdate"),
									  rset.getString("fimg")));
			}
			return boards;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
	
	public boolean insert(String fid,String ftitle,String fcon,String fuser,String fdate,String fimg) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO freeboard(fid,ftitle,fcon,fuser,fdate,fimg) VALUES(?,?,?,?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, null);
			pstmt.setString(2, ftitle);
			pstmt.setString(3, fcon);
			pstmt.setString(4, fuser);
			pstmt.setString(5, LocalDate.now().toString());
			pstmt.setString(6, fimg);
			
			int count = pstmt.executeUpdate();
			return (count >0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}

	public BoardDTO getDetail(String fcon) throws NamingException,SQLException{

		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM freeboard WHERE fcon = ?";	
			conn = ConnectionPool.get();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fcon);
			rset = pstmt.executeQuery();
			rset.next();
			String id = rset.getString(1);
			String title = rset.getString(2);
			String con = rset.getString(3);
			String user = rset.getString(4);
			String date = rset.getString(5);
			String img = rset.getString(6);

			
			BoardDTO product = new BoardDTO(id,title,con,user,date,img);
			return product;
		}	
		finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}	
	}
	
	
	public ArrayList<BoardDTO> getpageList(int startRow, int pageSize) throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM freeboard  ORDER BY fid desc limit ?,?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow-1);
			pstmt.setInt(2, pageSize);
			rset = pstmt.executeQuery();
			ArrayList<BoardDTO> boards = new ArrayList<BoardDTO>();
			while(rset.next()) {
				boards.add(new BoardDTO(rset.getString("fid"),
									  rset.getString("ftitle"),
									  rset.getString("fcon"),
									  rset.getString("fuser"),
									  rset.getString("fdate"),
									  rset.getString("fimg")));
			}
			return boards;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
}
