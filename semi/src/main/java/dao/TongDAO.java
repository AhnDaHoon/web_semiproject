package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import vo.TongVO;

public class TongDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = new StringBuffer();
	DataSource ds = null;
	
	
	// DB 연결
	public TongDAO() {
		Context initContext;
		
		try {
			initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println("DB 연결 실패");
		}
	}// TongDAO() end
	
	
	// 회원 정보 조회
//	public TongVO selectAll() {
//		
//	}
	
	
	
	// 로그인 처리
	public TongVO selectOne(String id, String pw) {
		sb.setLength(0);
		sb.append("SELECT id, pw, name, ssn, phone, email ");
		sb.append("FROM tong_member ");
		sb.append("WHERE id = ? AND pw = ? ");
		
		TongVO vo = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String name = rs.getString("name");
				String ssn = rs.getString("ssn");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				
				vo = new TongVO(id, pw, name, ssn, phone, email);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}// loginOk() end
	
	
	// 회원가입
	public void insertOne(TongVO vo) {
		sb.setLength(0);
		sb.append("INSERT INTO tong_member ");
		sb.append("VALUES ( ? , ? , ? , ? , ? , ? ) ");
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getSsn());
			pstmt.setString(5, vo.getPhone());
			pstmt.setString(6, vo.getEmail());
			
			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// insertOne() end
	
	public boolean isExists(String id) {
		sb.setLength(0); 
		sb.append("SELECT id, pw, name, ssn, phone, email ");
		sb.append("FROM tong_member ");
		sb.append("WHERE id = ? ");
		boolean b = false;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			b = rs.next();
			
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b?true:false;
	}
	
	// 아이디찾기
	public String findID(String name, String phone) {
		sb.setLength(0); 
		sb.append("SELECT id, pw, name, ssn, phone, email ");
		sb.append("FROM tong_member ");
		sb.append("WHERE name = ? and phone = ? ");
		String id = "null";

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				id = rs.getString("id");
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return id;
	}
	
	// 비밀번호찾기
	public String findPW(String id, String email) {
		sb.setLength(0); 
		sb.append("SELECT id, pw, name, ssn, phone, email ");
		sb.append("FROM tong_member ");
		sb.append("WHERE id = ? and email = ? ");
		String pw = "null";

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				pw = rs.getString("pw");
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return pw;
	}
	
}// class end
