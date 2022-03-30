package javaweb03;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner; public class Connection {
public static void main(String[] args) throws ClassNotFoundException, SQLException {
	int cnt=1;
	String dept=null;
	try {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String connectionUrl = "jdbc:sqlserver://localhost:49674;database=large;integratedSecurity=true";
		java.sql.Connection conn = DriverManager.getConnection(connectionUrl); Statement stmt = conn.createStatement();
		System.out.println("MS-SQL 서버 접속에 성공하였습니다.1"); 
		Scanner sc = new Scanner(System.in);
		System.out.println("ID 입력하세요"); 
		dept = sc.next();
		ResultSet rs = stmt.executeQuery("select * from dept_section_cnt"); 
		while( rs.next() ) {
			String field1 = rs.getString("dept_name");
			String field2 = rs.getString("year");
			String field3 = rs.getString("count_title"); 
			if(dept.equals(field1)) {
				System.out.print(field2 + "\t");
				System.out.print(field3 + "\t");
				System.out.print("\n");
		}else 
		cnt++; 
		if (cnt == 76) {
		System.out.print("그 학과는 강좌를 개설한적이 없습니다"); }
		}
		rs.close(); 
		stmt.close();   
		conn.close();
		} catch (ClassNotFoundException sqle) {
	System.out.println("SQLException : " + sqle);
		}
	}
}