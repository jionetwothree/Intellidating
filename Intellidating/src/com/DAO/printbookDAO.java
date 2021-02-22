package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.bookDTO;
import com.DTO.printbookDTO;

public class printbookDAO {

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

	public ArrayList<printbookDTO> allBook() {
		
		printbookDTO dto = null;
		ArrayList<printbookDTO> al_book = new ArrayList<printbookDTO>();
		
		try {
			getConnection();
			String sql = "SELECT * FROM PRINT_BOOK";
			
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int get_select_num = rs.getInt(1);
				int get_book_num = rs.getInt(2);
				String get_book_name = rs.getString(3);
				String get_book_image = rs.getString(4);
				String get_book_category3 = rs.getString(5);

				dto = new printbookDTO(get_select_num, get_book_num, get_book_name, get_book_image, get_book_category3);
				
				al_book.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return al_book;

	}
}
