package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.DTO.choiceDTO;

public class choiceDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	private void getConnectecion() {
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
	
	public choiceDTO choicedata(int mem_num) {
		choiceDTO dto = null;
		getConnectecion();
		String sql = "SELECT * FROM CHOICE WHERE mem_num=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, mem_num);
			
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;
		
	}
	

	
	}


