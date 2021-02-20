package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.DTO.bookDTO;
import com.DTO.memberDTO;

public class bookDAO {

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

	public bookDTO selectBook(String book_name) {
		bookDTO dto = null;
		getConnection();
		String sql = "SELECT * FROM BOOK WHERE book_name=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, book_name);
			rs = ps.executeQuery();
			if (rs.next()) {
				int get_num = rs.getInt(1);
				String get_name = rs.getString(2);
				String get_author = rs.getString(3);
				String get_publisher = rs.getString(4);
				String get_date = rs.getString(5);
				String get_image = rs.getString(6);

				dto = new bookDTO(get_num, get_name, get_author, get_publisher, get_date, get_image);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return dto;

	}

}
