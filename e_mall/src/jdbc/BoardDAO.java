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
	public ArrayList<BoardDTO> getList() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM board";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			ArrayList<BoardDTO> boards = new ArrayList<BoardDTO>();
			while(rset.next()) {
				boards.add(new BoardDTO(rset.getString("bid"),
									  rset.getString("btitle"),
									  rset.getString("bcon"),
									  rset.getString("buser"),
									  rset.getString("bdate")));
			}
			return boards;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}

	public boolean insert(String bid,String btitle,String bcon,String buser,String bdate,String bimg) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset =null;
		
		try {
			String sql = "INSERT INTO board(bid,btitle,bcon,buser,bdate,bimg) VALUES(?,?,?,?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, null);
			pstmt.setString(2, btitle);
			pstmt.setString(3, bcon);
			pstmt.setString(4, buser);
			pstmt.setString(5, LocalDate.now().toString());
			pstmt.setString(6, bimg);
			
			int count = pstmt.executeUpdate();
			return (count >0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
}
	
	
	

