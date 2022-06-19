package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.koreait.beans.MemberBean;

public class MemberDAO {

	Connection conn;			// 상단부에 선언해놓고 재활용 하는것이 바람직한 코드짜기다
	PreparedStatement pstm;
	ResultSet rs;
	
	// age_db.jsp -> getAge
	public int getAge(String name) {
		int age = 0;
		String sql = "SELECT age FROM MEMBER WHERE name = ?";
		
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, name);				// ? : param
			rs = pstm.executeQuery();
			
			if(rs.next()) {
				age = rs.getInt(1);					// return age
			}
		} catch (SQLException e) {
			System.out.println("드라이버 로딩 오류");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("알 수 없는 오류");
			e.printStackTrace();
		}
		
		return age;
	}
	
//	[내풀이] : 완전 감1도 못잡음
	//age_all.jsp -> getAll
//	public int getAll() {
//		int age = 0;
//		String sql = "SELECT * FROM MEMBER";
//		
//		try {
//			Connection conn = DBConnection.getConnection();
//			PreparedStatement pstm = conn.prepareStatement(sql);
//			pstm.setString(1, name);
//			ResultSet rs = pstm.executeQuery();
//			
//			if(rs.next()) {
//				age = rs.getInt(1);
//			}
//		} catch (SQLException e) {
//			System.out.println("드라이버 로딩 오류");
//			e.printStackTrace();
//		} catch (Exception e) {
//			System.out.println("알 수 없는 오류");
//			e.printStackTrace();
//		}
//		return age;
//	}
	
//	[강사님]
	public ArrayList<MemberBean>  selectAll(){
		String sql = "SELECT * FROM MEMBER";
		ArrayList<MemberBean> result = new ArrayList<MemberBean>();
		
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				MemberBean member = new MemberBean();
				member.setName(rs.getString(1));
				member.setAge(rs.getInt(2));
				result.add(member);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}
