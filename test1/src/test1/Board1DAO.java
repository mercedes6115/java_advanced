package test1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;



public class Board1DAO {
	Connection conn=null;
	PreparedStatement pstmt =null;
	ResultSet rset =null;
	
	
	public ArrayList<Board1DTO> getList() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM student";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			ArrayList<Board1DTO> boards = new ArrayList<Board1DTO>();
			while(rset.next()) {
				boards.add(new Board1DTO(rset.getString("num"),
									  rset.getString("depart"),
									  rset.getString("name"),
									  rset.getString("address"),
									  rset.getString("phone")));
			}
			return boards;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
	
	
	public boolean insert(String num,String depart,String name,String address,String phone) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO student(num,depart,name,address,phone) VALUES(?,?,?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.setString(2, depart);
			pstmt.setString(3, name);
			pstmt.setString(4, address);
			pstmt.setString(5, phone);

		
			int count = pstmt.executeUpdate();
			return (count >0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
}
