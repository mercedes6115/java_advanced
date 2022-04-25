package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class Resume_weDAO {
	public boolean insert(String certi_name,String grade,String gain_date,String issue_org) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO resume_we(certi_name,grade,gain_date,issue_org) VALUES(?,?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, certi_name);
			pstmt.setString(2, grade);
			pstmt.setString(3, gain_date);
			pstmt.setString(4, issue_org);

			
			int count = pstmt.executeUpdate();
			return (count >0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}

	
	public ArrayList<Resume_weDTO> getList() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM resume_we";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			ArrayList<Resume_weDTO> resume_we = new ArrayList<Resume_weDTO>();
			while(rset.next()) {
				resume_we.add(new Resume_weDTO(rset.getString("certi_name"),
									  rset.getString("grade"),
									  rset.getString("gain_date"),
									  rset.getString("issue_org")));
			}
			return resume_we;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
}
