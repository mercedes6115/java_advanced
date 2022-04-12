package file;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import util.ConnectionPool;

public class FileDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;

	public int upload(String fileName, String fileRealName, int bbsID) {
		
		try {
			String SQL = "INSERT INTO bbs_file VALUES (?,?,?)";
			conn = ConnectionPool.get();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, fileName);
			pstmt.setString(2, fileRealName);
			pstmt.setInt(3, bbsID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			
		}
		return -1;
		
	}
	
	

}