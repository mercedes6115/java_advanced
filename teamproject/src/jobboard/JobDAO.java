package jobboard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import board.BoardDTO;
import util.ConnectionPool;

public class JobDAO {
	public boolean insert(String jid,String juser,String jtitle,String jdate,String jfile,String jcon) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO jobboard(jid,juser,jtitle,jdate,jfile,jcon) VALUES(?,?,?,?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, null);
			pstmt.setString(2, juser);
			pstmt.setString(3, jtitle);
			pstmt.setString(4, LocalDate.now().toString());
			pstmt.setString(5, jfile);
			pstmt.setString(6, jcon);
			
			int count = pstmt.executeUpdate();
			return (count >0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
	
	
	public ArrayList<JobDTO> getList() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM jobboard";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			ArrayList<JobDTO> jobs = new ArrayList<JobDTO>();
			while(rset.next()) {
				jobs.add(new JobDTO(rset.getString("jid"),
									  rset.getString("juser"),
									  rset.getString("jtitle"),
									  rset.getString("jdate"),
									  rset.getString("jfile"),
									  rset.getString("jcon")));
			}
			return jobs;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
	
	public JobDTO getDetail(String jtitle) throws NamingException,SQLException{

		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM jobboard WHERE jtitle = ?";	
			conn = ConnectionPool.get();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, jtitle);
			rset = pstmt.executeQuery();
			rset.next();
			String id = rset.getString(1);
			String user = rset.getString(2);
			String title = rset.getString(3);
			String date = rset.getString(4);
			String file = rset.getString(5);
			String con = rset.getString(6);

			
			JobDTO job = new JobDTO(id,title,user,date,file,con);
			return job;
		}	
		finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}	
	}
	
	public ArrayList<JobDTO> getpageList(int startRow, int pageSize) throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM jobboard  ORDER BY jdate desc limit ?,?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow-1);
			pstmt.setInt(2, pageSize);
			rset = pstmt.executeQuery();
			ArrayList<JobDTO> jobs = new ArrayList<JobDTO>();
			while(rset.next()) {
				jobs.add(new JobDTO(rset.getString("jid"),
									  rset.getString("juser"),
									  rset.getString("jtitle"),
									  rset.getString("jdate"),
									  rset.getString("jfile"),
									  rset.getString("jcon")));
			}
			return jobs;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
	
}
