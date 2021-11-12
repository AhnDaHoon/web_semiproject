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
	
	
	// TV 단일 제품 정보 가져오기
	public TvVO getTvInfo(String pname) {
		TvVO vo = null;
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, psize, pixel, codename ");
		sb.append("FROM tv ");
		sb.append("WHERE pname = ? ");
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);
			rs = pstmt.executeQuery();
			rs.next();
			
			int pno = rs.getInt("pno");
			int code = rs.getInt("code");
			String pdesc = rs.getString("pdesc");
			String brand = rs.getString("brand");
			int price = rs.getInt("price");
			String regdate = rs.getString("regdate");
			int energy = rs.getInt("energy");
			String imgfile = rs.getString("imgfile");
			int psize = rs.getInt("psize");
			String pixel = rs.getString("pixel");
			String codename = rs.getString("codename");
			
			vo = new TvVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}// getTvInfo() end
	
	
	// 비교함에 저장된 제품 수 조회
	public int compareCount(String product) {
		int size = 1;	// 비교함에 저장된 제품 수
		
		sb.setLength(0);
		sb.append("SELECT count(pno) ");
		sb.append("FROM compare_"+ product + " ");
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			
			rs = pstmt.executeQuery();
			rs.next();
			
			size = rs.getInt("count(pno)");
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return size;
	}
	
	
	// TV 비교함 저장하기
	public void setTvCompare(TvVO vo) {
		
		sb.setLength(0);
		sb.append("INSERT INTO compare_tv ");
		sb.append("VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) ");
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setInt(1, vo.getPno());
			pstmt.setInt(2, vo.getCode());
			pstmt.setString(3, vo.getPname());
			pstmt.setString(4, vo.getPdesc());
			pstmt.setString(5, vo.getBrand());
			pstmt.setInt(6, vo.getPrice());
			pstmt.setString(7, vo.getRegdate());
			pstmt.setInt(8, vo.getEnergy());
			pstmt.setString(9, vo.getImgfile());
			pstmt.setInt(10, vo.getPsize());
			pstmt.setString(11, vo.getPixel());
			pstmt.setString(12, vo.getCodename());
			
			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// setTvCompare() end
	
	
	// TV 비교함 전체 불러오기
	public ArrayList<TvVO> getAll() {
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename ");
		sb.append("FROM compare_tv ");
		sb.append("ORDER BY pno ASC ");
		
		ArrayList<TvVO> list = new ArrayList<TvVO>();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int pno = rs.getInt("pno");
				int code = rs.getInt("code");
				String pname = rs.getString("pname");
				String pdesc = rs.getString("pdesc");
				String brand = rs.getString("brand");
				int price = rs.getInt("price");
				String regdate = rs.getString("regdate");
				int energy = rs.getInt("energy");
				String imgfile = rs.getString("imgfile");
				int psize = rs.getInt("psize");
				String pixel = rs.getString("pixel");
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
	
	
	// TV 비교함 삭제하기
	public void deleteCompare(String name, int pno) {
		sb.setLength(0);
		sb.append("DELETE compare_" + name + " ");
		sb.append("WHERE pno = ? ");
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, pno);
			pstmt.executeUpdate();
			
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// deleteCompare() end
	
	
}// class end