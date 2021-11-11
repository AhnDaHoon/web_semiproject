package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import vo.ProductVO;
import vo.TvVO;


public class ProductDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = new StringBuffer();
	DataSource ds = null;
	
	
	// DB 연결
	public ProductDAO() {
		Context initContext;
		
		try {
			initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println("DB 연결 실패");
		}
	}// ProductDAO() end
	
	
	// TV 비교함 전체 불러오기
	public ArrayList<TvVO> getAll() {
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel codename ");
		sb.append("FROM compare_tv ");
		sb.append("ORDER BY pno ASC ");
		
		ArrayList<TvVO> list = new ArrayList<TvVO>();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int pno = rs.getInt("pno");
				String code = rs.getString("code");
				String pname = rs.getString("pname");
				String pdesc = rs.getString("pdesc");
				String brand = rs.getString("brand");
				int price = rs.getInt("price");
				String regdate = rs.getString("regdate");
				int energy = rs.getInt("energy");
				String imgfile = rs.getString("imgfile");
				int psize = rs.getInt("psize");
				int pixel = rs.getInt("pixel");
				String codename = rs.getString("codename");
				
				TvVO vo = new TvVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename);
				list.add(vo);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}// getAll() end
	

	
	
}// class end
