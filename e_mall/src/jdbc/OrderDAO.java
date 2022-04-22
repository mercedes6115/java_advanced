package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class OrderDAO {
	
	// 구매 시작 매서드  status 1 고객
	public int insert() { 
		return 1;
	}
	
	// 입금확인 매서드  status 2 고객
	public int confirm() { 
		return 1;
	} 
	// 발송 매서드	status 3 판매자
	public int delivery() { 
		return 1;
	}
	// 리뷰 매서드 	status 4 고객 
	public int  review() { 
		return 1;
	}
	//
	public int confirm3() { 
		return 1;
	}
		
	public ArrayList<OrderDTO> getList() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM orders";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			ArrayList<OrderDTO> orders = new ArrayList<OrderDTO>();
			while(rset.next()) {
				orders.add(new OrderDTO(rset.getString("oid"),
									  rset.getString("opid"),
									  rset.getString("ouid"),
									  rset.getString("opname"),
									  rset.getString("oprice"),
									  rset.getString("ostatus"),
									  rset.getString("odate"),
									  rset.getString("ograde"),
									  rset.getString("ocomm")));
			}
			return orders;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
	
	
	
	
}
