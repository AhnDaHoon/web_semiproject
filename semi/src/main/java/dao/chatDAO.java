package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import vo.chatVO;

public class chatDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = new StringBuffer();
	DataSource ds = null;
	
	
	public chatDAO() {
		Context initContext;
		
		try {
			initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println("DB 연결 실패");
		}
	}
	
	public void chatContentInsert(String id, String content) {
		sb.setLength(0);
		sb.append("INSERT INTO char ");
		sb.append("VALUES(?, ?, chat_seq.NEXTVAL ) ");
		sb.append("WHERE pname = ? ");
	}
}
