package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

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
				int get_recom_book1 = rs.getInt(6);
				int get_recom_book2 = rs.getInt(7);
				int get_recom_book3 = rs.getInt(8);

				dto = new recommendationDTO(mem_num, get_recom_club1, get_recom_club2, get_recom_club3, get_recom_book1,
						get_recom_book2, get_recom_book3);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return dto;
	}

	public int insertrecombook(int mem_num, String search1, String search2, String search_submit) {
		int cnt = 0;
		String get_search1 = "", get_search2 = "", get_search3 = "";
		int get_booknum1 = 0, get_booknum2 = 0, get_booknum3 = 0;
		int[] a = rand_int();
		getConnection();
		String sql = "select book_category3 from book where book_name like ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, search1);
			rs = ps.executeQuery();
			if (rs.next()) {
				get_search1 = rs.getString(1);
			}
			ps.setString(1, search2);
			rs = ps.executeQuery();
			if (rs.next()) {
				get_search2 = rs.getString(1);
			}
			ps.setString(1, search_submit);
			rs = ps.executeQuery();
			if (rs.next()) {
				get_search3 = rs.getString(1);
			}
			sql = "select book_num from book where book_category3=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, get_search1);
			rs = ps.executeQuery();
			for (int i = 0; i < a[0]; i++) {
				if (rs.next()) {
					get_booknum1 = rs.getInt(1);
				}
			}
			ps.setString(1, get_search2);
			rs = ps.executeQuery();
			for (int i = 0; i < a[1]; i++) {
				if (rs.next()) {
					get_booknum2 = rs.getInt(1);
				}
			}
			ps.setString(1, get_search3);
			rs = ps.executeQuery();
			for (int i = 0; i < a[2]; i++) {
				if (rs.next()) {
					get_booknum3 = rs.getInt(1);
				}
			}
			sql = "UPDATE recommendation SET recom_book1=?, recom_book2=?, recom_book3=? where mem_num=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, get_booknum1);
			ps.setInt(2, get_booknum2);
			ps.setInt(3, get_booknum3);
			ps.setInt(4, mem_num);
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	
	public int[] rand_int() {
		Random rd = new Random();
		int[] a = new int[3];
		for (int i = 0; i < 3; i++) {
			a[i] = rd.nextInt(10) + 1;
			for (int j = 0; j < i; j++) {
				if (a[i] == a[j]) {
					i--;
				}
			}
		}
		return a;
	}
	public int setrecombook(int mem_num, String choice1, String choice2, String choice3) {
		int cnt = 0;
		getConnection();
		int get_booknum1 = 0, get_booknum2 = 0, get_booknum3 = 0;
		String sql = "select book_num from book where book_category3=?";
		int[] a = rand_int();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, choice1);
			rs = ps.executeQuery();
			for (int i = 0; i < a[0]; i++) {
				if (rs.next()) {
					get_booknum1 = rs.getInt(1);
				}
			}
			ps.setString(1, choice2);
			rs = ps.executeQuery();
			for (int i = 0; i < a[1]; i++) {
				if (rs.next()) {
					get_booknum2 = rs.getInt(1);
				}
			}
			ps.setString(1, choice3);
			rs = ps.executeQuery();
			for (int i = 0; i < a[2]; i++) {
				if (rs.next()) {
					get_booknum3 = rs.getInt(1);
				}
			}
			sql = "UPDATE recommendation SET recom_book1=?, recom_book2=?, recom_book3=? where mem_num=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, get_booknum1);
			ps.setInt(2, get_booknum2);
			ps.setInt(3, get_booknum3);
			ps.setInt(4, mem_num);
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public int setrecomclub(int mem_num, int recom_club1, int recom_club2, int recom_club3) {
		int cnt = 0;
		getConnection();
		String sql = "UPDATE recommendation set recom_club1=?, recom_club2=?, recom_club3=? where mem_num=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, recom_club1);
			ps.setInt(2, recom_club2);
			ps.setInt(3, recom_club3);
			ps.setInt(4, mem_num);
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
}
