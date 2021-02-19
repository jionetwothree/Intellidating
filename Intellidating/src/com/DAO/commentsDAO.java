package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.commentsDTO;
import com.DTO.memberDTO;

public class commentsDAO {

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
	
	private String getDate() {
		String sql = "SELECT SYSDATE FROM COMMENTS";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return "";
	}
		
		

	public int insertComment(int book_num, int mem_num, String content) {
		int cnt = 0;
		getConnection();
		String sql = "INSERT INTO COMMENTS(comment_num, book_num, mem_num, contents) VALUES(seq_co_num.NEXTVAL,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, book_num);
			ps.setInt(2, mem_num);
			ps.setString(3, content);
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;

	}

	public ArrayList<commentsDTO> selectComment(int book_num) {

		ArrayList<commentsDTO> al_comments = new ArrayList<commentsDTO>();
		commentsDTO dto = null;
		getConnection();
		String sql = "SELECT * FROM COMMENTS WHERE book_num=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, book_num);
			rs = ps.executeQuery();
			if (rs.next()) {
				int get_book_num = rs.getInt(2);
				int get_mem_num = rs.getInt(3);
				String get_content = rs.getString(4);
				String get_date = rs.getString(5);

				dto = new commentsDTO(get_book_num, get_mem_num, get_content, get_date);
				al_comments.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return al_comments;
	}
}
