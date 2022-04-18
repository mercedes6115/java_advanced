package jdbc;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import util.ConnectionPool;

public class ProductDAO {
	public ArrayList<ProductDTO> getAllProducts(){
		
		return listOdProducts;
	}
	
	
	public ArrayList<ProductDTO> getList() throws NamingException,SQLException{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM product";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			ArrayList<ProductDTO> products = new ArrayList<ProductDTO>();
			while(rset.next()) {
				products.add(new ProductDTO(rset.getString("pid"),
									  rset.getString("pname"),
									  rset.getString("pprice"),
									  rset.getString("pdesc"),
									  rset.getString("pmanu"),
									  rset.getString("pcate"),
									  rset.getString("pcondi"),
									  rset.getString("pimgs")));
			}
			return products;
			
		}finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}
	}
	
	
	public ProductDTO getDetail(String pid) throws NamingException,SQLException{

		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		try {
			String sql="SELECT * FROM product WHERE pid = ?";	
			conn = ConnectionPool.get();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pid);
			rset = pstmt.executeQuery();
			rset.next();
			String id = rset.getString(1);
			String name = rset.getString(2);
			String price = rset.getString(3);
			String desc = rset.getString(4);
			String manu = rset.getString(5);
			String cate = rset.getString(6);
			String condi = rset.getString(7);
			String imgs = rset.getString(8);
			
			ProductDTO product = new ProductDTO(id,name,price,desc,manu,cate,condi,imgs);
			return product;
		}	
		finally {	
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			if(rset != null) rset.close();
		}	
	}
	
	
	
	public boolean insert(String pid, String pname,String pprice,String pdesc,String pmanu,String pcate,String pcondi,String pimgs) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO product(pid,pname,pprice,pdesc,pmanu,pcate,pcondi,pimgs) VALUES(?,?,?,?,?,?,?,?)";		
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pid);
			pstmt.setString(2, pname);
			pstmt.setString(3, pprice);
			pstmt.setString(4, pdesc);
			pstmt.setString(5, pmanu);
			pstmt.setString(6, pcate);
			pstmt.setString(7, pcondi);
			pstmt.setString(8, pimgs);
			
			int count = pstmt.executeUpdate();
			return (count >0) ? true : false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
}
