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

public class TVDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = new StringBuffer();
	DataSource ds = null;
	
	// DB 연결
	public TVDAO() {
		Context initContext;
		
		try {
			initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println("DB 연결 실패");
		}
	}
	
	public ArrayList<TvVO> getAll() {
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename ");
		sb.append("FROM tv ");
	
		
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
	}
	
	public ArrayList<TvVO> searchEnergy(ArrayList<String> energyArr, ArrayList<String> brandArr, ArrayList<String> psizeArr, ArrayList<String> pixelArr) {
		ArrayList<TvVO> list = new ArrayList<TvVO>();
		if(energyArr.size() >= 1) {
			sb.setLength(0);
			sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename ");
			sb.append("FROM(SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename ");
			sb.append("    FROM (SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename ");
			sb.append("        FROM (SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename ");
			sb.append("            FROM tv ");
			
			sb.append("            WHERE energy = 1 or energy = 2 or energy = 3) ");
			
			sb.append("        WHERE brand = '삼성' OR brand = 'LG')  ");
			
			sb.append("    WHERE pixel = '3820X2160') ");
			
			sb.append("WHERE psize >= 39 ");
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			String varri = "WHERE energy = ? OR energy =";
			String varri2 = " ? OR energy =";
			String varri3 = " ? ";
			
			for(int i = 0; i < energyArr.size()-1; i++) {
				if(i == energyArr.size()-2) {
					varri = varri+varri3;		
				}else{
					varri = varri+varri2;
				}
			}
			sb.append(varri);
			
			
			try {
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sb.toString());
				for(int i = 0; i < energyArr.size(); i++) {
					pstmt.setString(i+1, energyArr.get(i));					
				}

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
			
		}
		
		// 배열 길이가 0이면 다 리턴
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename ");
		sb.append("FROM tv ");
				
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
	}
}
