package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class Resume_acDAO {
	public boolean insert(String sch_name,String major,String enrolldate,String gradate) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO resume_ac(sch_name,major,enrolldate,gradate) VALUES(?,?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sch_name);
			pstmt.setString(2, major);
			pstmt.setString(3, enrolldate);
			pstmt.setString(4, gradate);

			
			int count = pstmt.executeUpdate();
			return (count >0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}


	public ArrayList<Resume_acDTO> getList() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM resume_ac";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			ArrayList<Resume_acDTO> resume_ac = new ArrayList<Resume_acDTO>();
			while(rset.next()) {
				resume_ac.add(new Resume_acDTO(rset.getString("sch_name"),
									  rset.getString("major"),
									  rset.getString("enrolldate"),
									  rset.getString("gradate")));
			}
			return resume_ac;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
}
