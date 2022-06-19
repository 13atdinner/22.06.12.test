package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.koreait.beans.MemberBean;

public class MemberDAO {

	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	public boolean join(MemberBean member) {
	
		String sql = "INSERT INTO TBL_MEMBER VALUES (?,?,?,?,?)";
		int result = 0;
		
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, member.getUserid());
			pstm.setString(2, member.getUserpw());
			pstm.setString(3, member.getUsername());
			pstm.setString(4, member.getUsergender());
			pstm.setString(5, member.getUserphone());
			
			// executeUpdate()
			// - SQL DML(데이터 조작어) 행의 수 return
			// - 결과값이 없는 경우 0 return
			result = pstm.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// 결과값이 없는 경우 0으로 return주는 로직을 짜놨음
		if(result != 0) {
			// 성공
			return true;
		} else {
			// 실패
			return false;
		}
	}
//	[내풀이]
//	public boolean login() {
//	
//		String sql = "SELECT * FROM TBL_MEMBER tm WHERE USERID=? AND USERPW=?";
//		
//		try {
//			conn = DBConnection.getConnection();
//			pstm = conn.prepareStatement(sql);
//			rs = pstm.executeQuery();
//			
//			if(rs.next()) {
//				out.print(rs.getString(1)+"님 환영합니다");
//				out.print("비밀번호는 "+rs.getString(2)+" 입니다");
//			}
//		} catch(SQLException e){
//			e.printStackTrace();
//		}
//		return true;
//	}
	
//	[강사님]
//	public boolean login(String userid, String userpw) {
//		
//		String sql = "SELECT * FROM TBL_MEMBER tm WHERE USERID=? AND USERPW=?";
//		boolean flag = false;					// 기본값은 항상 false로 두고 로직이 정확히 실행되었을 때 true로 바꿔준다
//		
//		try {
//			conn = DBConnection.getConnection();
//			pstm = conn.prepareStatement(sql);
//			
//			pstm.setString(1, userid);
//			pstm.setString(2, userpw);
//			
//			rs = pstm.executeQuery();
//			
//			if(rs.next()) {				// DB에서 데이터를 불러올 수 있다면 -> rs.next()사용가능
//				flag = true;			// 가입이 되어 있다는 뜻이니까 여기서 true값으로 바꿔준다
//			}
//			
//		} catch(SQLException e){
//			e.printStackTrace();
//		}
//		
//		return flag;
//	}
	
//	[login메서드를 DB데이터 전부 받아오게 수정]
	public MemberBean login(String userid, String userpw) {
		
		String sql = "SELECT * FROM TBL_MEMBER tm WHERE USERID=? AND USERPW=?";
		MemberBean member = null;
		
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, userid);
			pstm.setString(2, userpw);
			
			rs = pstm.executeQuery();
			
			if(rs.next()) {
				member = new MemberBean();
				member.setUserid(rs.getString(1));
				member.setUserpw(rs.getString(2));
				member.setUsername(rs.getString(3));
				member.setUsergender(rs.getString(4));
				member.setUserphone(rs.getString(5));
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return member;
		
	}
}
