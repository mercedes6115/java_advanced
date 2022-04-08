package dbConnectClose;
import java.sql.*; 
public class DBconnectClose {
	public static Connection getConnection() {
		
		//JDBC 드라이버 로딩
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			System.out.println(e1.getMessage());
		}
		//DB연결
		String url = "jdbc:mysql://localhost:3306/shoppingmall";
		String id = "root";
		String pw = "a489348a!";
		Connection conn=null;
		try {
			conn = DriverManager.getConnection(url, id, pw);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		return conn;
	}
	public static void resourceClose(ResultSet rset, Statement stmt, Connection conn) {
		try{
			if(rset != null) rset.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}catch(SQLException e) {
			System.out.println("SQL Error");
		}
	} // 연결시켜서 sql문작성하고 결과가져올때
	
	public static void resourceClose(Statement stmt, Connection conn) {
		try{
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}catch(SQLException e) {
			System.out.println("SQL Error");
		}
	} // 연결해서 sql문만 작성하고 실행		
}
