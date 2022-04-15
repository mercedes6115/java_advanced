package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
}
	
	
	

