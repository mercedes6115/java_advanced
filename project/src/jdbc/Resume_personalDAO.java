package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class Resume_personalDAO {
	public boolean insert(String k_name,String reginum,String e_name,String birthday,String address,String pimg) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO resume_personal(k_name,reginum,e_name,birthday,address,pimg) VALUES(?,?,?,?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, k_name);
			pstmt.setString(2, reginum);
			pstmt.setString(3, e_name);
			pstmt.setString(4, birthday);
			pstmt.setString(5, address);
			pstmt.setString(6, pimg);
			
			int count = pstmt.executeUpdate();
			return (count >0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}

	public Resume_personalDTO getList(String k_name) throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM resume_personal WHERE k_name=?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, k_name);
			rset = pstmt.executeQuery();
			rset.next();
			String name = rset.getString(1);
			String reginum = rset.getString(2);
			String e_name = rset.getString(3);
			String birthday = rset.getString(4);
			String address = rset.getString(5);
			String pimg = rset.getString(6);
			
			Resume_personalDTO resume = new Resume_personalDTO(k_name,reginum,e_name,birthday,address,pimg);
			return resume;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
}
