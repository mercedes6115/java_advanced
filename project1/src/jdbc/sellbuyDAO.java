package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class sellbuyDAO {
	
	public ArrayList<sellbuyDTO> getList()
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM useditem  WHERE sbid ORDER BY sbdate DESC ";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
			
			while(rs.next()) {
				sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
						                    rs.getString("sbclass"),
											rs.getString("sbtitle"),
											rs.getString("sbcontent"),
											rs.getString("sbuser"),
											rs.getString("sbimage"),
											rs.getString("sbcate"),
											rs.getString("sbdate")));
			}
			return sellbuys;
			
		}finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}		
	}
	
	public ArrayList<sellbuyDTO> getList5()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem ORDER BY sbdate DESC LIMIT 5";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}		
			}
	
	

	public ArrayList<sellbuyDTO> getSL()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  WHERE sbclass = '?????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
		
	public ArrayList<sellbuyDTO> getby()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  WHERE sbclass = '?????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getfr()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  WHERE sbclass = '????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	
	
	public ArrayList<sellbuyDTO> getclall()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbcate ='??????/????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	
	public ArrayList<sellbuyDTO> getclsl()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbclass = '?????????' AND sbcate ='??????/????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	
	public ArrayList<sellbuyDTO> getclby()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbclass = '?????????' AND sbcate ='??????/????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getfuall()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbcate ='??????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
			}
	
	public ArrayList<sellbuyDTO> getfusl()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbclass = '?????????' AND sbcate ='??????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	
	public ArrayList<sellbuyDTO> getfuby()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbclass = '?????????' AND sbcate ='??????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	
	public ArrayList<sellbuyDTO> getptall()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbcate ='????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getptby()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbclass = '?????????' AND sbcate ='????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	
	public ArrayList<sellbuyDTO> getptsl()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbclass = '?????????' AND sbcate ='????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getitall()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbcate ='????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getitby()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbclass = '?????????' AND sbcate ='????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getitsl()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbclass = '?????????' AND sbcate ='????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getmcall()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbcate ='??????/??????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getmcby()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbclass = '?????????' and sbcate ='??????/??????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	
	public ArrayList<sellbuyDTO> getmcsl()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem  where sbclass = '?????????' and sbcate ='??????/??????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> gettkall()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbcate ='??????/?????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	
	public ArrayList<sellbuyDTO> gettkby()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbclass = '?????????' and sbcate ='??????/?????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	
	public ArrayList<sellbuyDTO> gettksl()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbclass = '?????????' and sbcate ='??????/?????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getcmall()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbcate ='?????????/??????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getcmby()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbclass = '?????????' and sbcate ='?????????/??????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getcmsl()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbclass = '?????????' and sbcate ='?????????/??????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getbkall()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbcate ='??????/??????/??????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	
	public ArrayList<sellbuyDTO> getbkby()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbclass = '?????????' and sbcate ='??????/??????/??????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getbksl()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbclass = '?????????' and sbcate ='??????/??????/??????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	

	public ArrayList<sellbuyDTO> getelall()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbcate ='????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}
	
	public ArrayList<sellbuyDTO> getelby()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbclass = '?????????' and sbcate ='????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}

	
	public ArrayList<sellbuyDTO> getelsl()
			throws NamingException, SQLException {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "SELECT * FROM useditem where sbclass = '?????????' and sbcate ='????????????'";
					
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					ArrayList<sellbuyDTO> sellbuys = new ArrayList<sellbuyDTO>();
					
					while(rs.next()) {
						sellbuys.add(new sellbuyDTO(rs.getString("sbid"),		
								                    rs.getString("sbclass"),
													rs.getString("sbtitle"),
													rs.getString("sbcontent"),
													rs.getString("sbuser"),
													rs.getString("sbimage"),
													rs.getString("sbcate"),
													rs.getString("sbdate")));
					}
					return sellbuys;
					
				}finally {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}
				
				
			}

	
	
	public sellbuyDTO getDetail(String sbid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM useditem WHERE sbid = ?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, sbid);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			sbid = rs.getString(1);
			String sbclass = rs.getString(2);
			String sbtitle = rs.getString(3);
			String sbcontent = rs.getString(4);
			String sbuser = rs.getString(5);
			String sbimage = rs.getString(6);	
			String sbcate = rs.getString(7);				
			String sbdate = rs.getString(8);

			
			sellbuyDTO board = new sellbuyDTO(sbid, sbclass, sbtitle, sbcontent, sbuser, sbimage, sbcate, sbdate);
			
			return board;
			
	} finally {
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	}
	
	}
	
	
	
	
	
	
	
	public boolean insert(String sbclass, String sbtitle, String sbcontent, String sbuser, String sbimage, String sbcate)
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO useditem (sbclass,sbtitle, sbcontent, sbuser, sbimage, sbcate) VALUES (?,?,?,?,?,?)";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);			
			    pstmt.setString(1, sbclass);
				pstmt.setString(2, sbtitle);
				pstmt.setString(3, sbcontent);
				pstmt.setString(4, sbuser);
				pstmt.setString(5, sbimage);
				pstmt.setString(6, sbcate);
				
			int result = pstmt.executeUpdate();
			
			return (result==1) ? true : false;			
			
		} finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}
	
	
	
	public ArrayList<sellbuyDTO> getpageList(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem  ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getsell(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass='?????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getbuy(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass='?????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getfree(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass='????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getallcloth(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbcate ='??????/????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getsellcloth(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass='?????????' AND sbcate ='??????/????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getbuycloth(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass='?????????' AND sbcate ='??????/????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getallfurn(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbcate ='??????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getsellfurn(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass='?????????' AND sbcate ='??????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getbuyfurn(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass='?????????' AND sbcate ='??????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getallpet(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbcate ='????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	
	public ArrayList<sellbuyDTO> getsellpet(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass='?????????' AND sbcate ='????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	
	
	public ArrayList<sellbuyDTO> getbuypet(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass='?????????' AND sbcate ='????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getallit(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbcate ='????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getsellit(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass='?????????' AND sbcate ='????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getbuyit(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass='?????????' AND sbcate ='????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getallmc(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbcate ='??????/??????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getsellmc(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass = '?????????' and sbcate ='??????/??????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getbuymc(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass = '?????????' and sbcate ='??????/??????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getalltk(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbcate ='??????/?????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getselltk(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass = '?????????' and sbcate ='??????/?????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getbuytk(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass = '?????????' and sbcate ='??????/?????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getallcm(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbcate ='?????????/??????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getsellcm(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass = '?????????' and sbcate ='?????????/??????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }

	public ArrayList<sellbuyDTO> getbuycm(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass = '?????????' and sbcate ='?????????/??????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getallbk(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbcate ='??????/??????/??????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getsellbk(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass = '?????????' and sbcate ='??????/??????/??????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	
	public ArrayList<sellbuyDTO> getbuybk(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass = '?????????' and sbcate ='??????/??????/??????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	
	
	public ArrayList<sellbuyDTO> getallel(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbcate ='????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	
	public ArrayList<sellbuyDTO> getsellel(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass = '?????????' and sbcate ='????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getbuyel(int startRow, int pageSize) throws NamingException,SQLException{
	      Connection conn=null;
	      PreparedStatement pstmt =null;
	      ResultSet rs =null;
	      
	      try {
	         String sql="SELECT * FROM useditem where sbclass = '?????????' and sbcate ='????????????' ORDER BY sbid desc limit ?,?";
	         conn = ConnectionPool.get();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow-1);
	         pstmt.setInt(2, pageSize);
	         rs = pstmt.executeQuery();
	         ArrayList<sellbuyDTO> pages = new ArrayList<sellbuyDTO>();
	         while(rs.next()) {
	            pages.add(new sellbuyDTO(rs.getString("sbid"),		
	                    rs.getString("sbclass"),
						rs.getString("sbtitle"),
						rs.getString("sbcontent"),
						rs.getString("sbuser"),
						rs.getString("sbimage"),
						rs.getString("sbcate"),
						rs.getString("sbdate")));
	         }
	         return pages;
	         
	      }finally {   
	         if(pstmt != null) pstmt.close();
	         if(conn != null) conn.close();
	         if(rs != null) rs.close();
	      }
	   }
	
	public ArrayList<sellbuyDTO> getmyList(String uname)
			throws NamingException, SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
				try {
					String sql = "SELECT * FROM useditem WHERE sbuser=? ORDER BY bdate DESC";
					 
					conn = ConnectionPool.get();
					pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, uname);
					rset = pstmt.executeQuery();  // db?????? ???????????? ?????????
					
					ArrayList<sellbuyDTO> boards = new ArrayList<sellbuyDTO>();
					// ?????????????????? ????????? ??????????????? ?????? ????????? ????????? ?????? ????????? ???????????? 
					// DTO ???????????? ????????? ???????????? ????????? ????????? ArrayList ????????? ????????????  products??? ????????? ???????????????
					while(rset.next()) {
						boards.add(new sellbuyDTO(rset.getString("sbid"),
													rset.getString("sbclass"),
													rset.getString("sbtitle"),
													rset.getString("sbcontent"),
													rset.getString("sbuser"),
													rset.getString("sbimage"),
													rset.getString("sbcate"),
													rset.getString("sbdate")));
					}
					return boards;
					
				}finally {
					if(rset!=null) rset.close();
					if(conn!=null) conn.close();
					if(pstmt!=null) pstmt.close();
				}
			}
	
}
