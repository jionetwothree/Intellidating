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
	
	public int choicedata(int mem_num) {
		int result=0; // 선택한 데이터가 있으면 1, 없으면 0
		choiceDTO dto = null;
		getConnectecion();
		String sql = "SELECT * FROM CHOICE WHERE mem_num=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, mem_num);
			rs = ps.executeQuery();
			if(rs.next()) {
				result=1;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			close();
		}
		return result;
		
	}

	public int insertchoice(int mem_num, String choice1, String choice2, String choice3, String choice4, String choice5) {
		int cnt=0;
		getConnectecion();
		String sql = "INSERT INTO CHOICE VALUES(seq_choice_num.NEXTVAL,?,?,?,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, mem_num);
			ps.setString(2, choice1);
			ps.setString(3, choice2);
			ps.setString(4, choice3);
			ps.setString(5, choice4);
			ps.setString(6, choice5);
			cnt = ps.executeUpdate();
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
}

