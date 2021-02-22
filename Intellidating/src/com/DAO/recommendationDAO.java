package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.DTO.memberDTO;
import com.DTO.recommendationDTO;

public class recommendationDAO {

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
	
	public int insertrecomclub(int mem_num, int recom_club1, int recom_club2, int recom_club3) {
		int cnt = 0;
		getConnection();
		String sql = "INSERT INTO recommendation(recom_num, mem_num, recom_club1, recom_club2, recom_club3) VALUES(seq_recom_num.NEXTVAL,?,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, mem_num);
			ps.setInt(2, recom_club1);
			ps.setInt(3, recom_club2);
			ps.setInt(4, recom_club3);
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;

	}
	
	public recommendationDTO selectrecomclub(int mem_num) {
		recommendationDTO dto = null;
		getConnection();
		String sql = "SELECT * FROM recommendation WHERE mem_num=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, mem_num);
			rs = ps.executeQuery();
			if (rs.next()) {
				int get_recom_club1 = rs.getInt(3);
				int get_recom_club2 = rs.getInt(4);
				int get_recom_club3 = rs.getInt(5);

				dto = new recommendationDTO(mem_num, get_recom_club1, get_recom_club2, get_recom_club3);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return dto;
	}

}
