package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

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
	
	public ArrayList<JobDTO> getList5() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM jobboard ORDER BY jdate DESC LIMIT 5";
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

			
			JobDTO job = new JobDTO(id,user,title,date,file,con);
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
	
	public ArrayList<JobDTO> getmyList(String uname)
			throws NamingException, SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
				try {
					String sql = "SELECT * FROM jobboard WHERE juser=? ORDER BY jdate DESC";
					 
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, uname);
					rset = pstmt.executeQuery();  // db에서 뭉텅이로 긁어옴
					
					ArrayList<JobDTO> jobs = new ArrayList<JobDTO>();
					// 받은것중에서 하나씩 제거하면서 안의 내용이 있다면 안의 내용을 꺼내와라 
					// DTO 클래스를 객체로 만들어서 받아온 값들을 ArrayList 형태의 뭉텅이로  products에 넣어서 가지고나옴
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
					if(rset!=null) rset.close();
					if(conn!=null) conn.close();
					if(pstmt!=null) pstmt.close();
				}
			}
	
	public boolean delete(String juser) 
			throws NamingException, SQLException{
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "DELETE FROM jobboard WHERE juser=?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,juser);
			int rs = pstmt.executeUpdate();
			
			return rs>0? true:false; //성공케이스
		}finally {
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		}
	}
	
}
