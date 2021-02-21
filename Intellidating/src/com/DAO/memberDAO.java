package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.memberDTO;

public class memberDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public int joinMember(String email, String password, String name, String nickname) {
		int cnt = 0;
		getConnection();
		String sql = "INSERT INTO MEMBER(mem_num, mem_email, mem_password, mem_username, mem_nickname) VALUES(seq_mem_num.NEXTVAL,?,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ps.setString(3, name);
			ps.setString(4, nickname);
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;

	}
	
	public memberDTO loginMember(String email, String password) {

		memberDTO dto = null;
		getConnection();
		String sql = "SELECT * FROM MEMBER WHERE mem_email=? AND mem_password=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if (rs.next()) {
				int get_num = rs.getInt(1);
				String get_email = rs.getString(2);
				String get_pw = rs.getString(3);
				String get_name = rs.getString(4);
				String get_nickname = rs.getString(5);

				dto = new memberDTO(get_num, get_email, get_pw, get_name, get_nickname);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return dto;
	}

}
