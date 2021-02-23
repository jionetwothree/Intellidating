package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com.DTO.bookDTO;
import com.DTO.commentsDTO;
import com.DTO.memberDTO;
import com.DTO.recommendationDTO;

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
		
		try {
			getConnection();
			String sql = "SELECT * FROM BOOK WHERE book_name=?";

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
	
	public bookDTO selectBookByNum(String book_num) {
			
			bookDTO dto = null;
			
			try {
				getConnection();
				String sql = "SELECT * FROM BOOK WHERE book_num=?";
	
				ps = conn.prepareStatement(sql);
				
				ps.setString(1, book_num);
				
				rs = ps.executeQuery();
				
				if (rs.next()) {
					int get_num = rs.getInt(1);
					String get_name = rs.getString(2);
					String get_author = rs.getString(3);
					String get_publisher = rs.getString(4);
					String get_date = rs.getString(5);
					String get_image = rs.getString(6);
					String get_category1 = rs.getString(7);
					String get_category2 = rs.getString(8);
					String get_category3 = rs.getString(9);
	
					dto = new bookDTO(get_num, get_name, get_author, get_publisher, get_date, get_image, get_category1, get_category2, get_category3);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
	
			return dto;
	
		}
	
	
	  public ArrayList<bookDTO> searchBook(recommendationDTO recom_dto) {
		
		ArrayList<bookDTO> al_book = new ArrayList<bookDTO>();
		bookDTO dto = new bookDTO();
		
		try {
			getConnection();
			String sql = "SELECT * FROM BOOK WHERE book_num= ? or book_num=? or  book_num=?";
	
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, recom_dto.getRecom_book1());
			ps.setInt(2, recom_dto.getRecom_book2());
			ps.setInt(3, recom_dto.getRecom_book3());
			
			rs = ps.executeQuery();
			
			while (rs.next()) {
				int get_num = rs.getInt(1);
				String get_name = rs.getString(2);
				String get_author = rs.getString(3);
				String get_publisher = rs.getString(4);
				String get_date = rs.getString(5);
				String get_image = rs.getString(6);
	
				dto = new bookDTO(get_num, get_name, get_author, get_publisher, get_date, get_image);
				al_book.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

      		return al_book;

      	}

        
//	//검색한 책이름 전부 읽어오는 메소드
//		public ArrayList<bookDTO> searchBook2(bookDTO b_dto) {
//			//1.테이블에서 한 레코드에 있는 책 정보를 DTO로 묶어 arrayList에 담기
//			ArrayList<bookDTO> al_book = new ArrayList<bookDTO>();
//			
//			bookDTO dto = null;
//			
//			try {
//				getConnection();
//				String sql = "SELECT * FROM BOOK WHERE book_name LIKE '%?%'";
//				
//				ps = conn.prepareStatement(sql);
//				
//				rs = ps.executeQuery();
//				
//				while(rs.next()) {
//					bookDTO b_dto = new bookDTO();
//					int get_num = rs.getInt(1);
//					String get_name = rs.getString(2);
//					String get_author = rs.getString(3);
//					String get_image = rs.getString(4);
//					
//					int book_name;
//					
//					dto = new bookDTO(get_num, get_name, get_author, get_image);
//					
//					al_book.add(dto);
//		
//				}
//				
//				//2.전체 책 정보를 담고 있는 arrayList반환
//				
//			} catch (SQLException e) {
//				e.printStackTrace();
//			} finally {
//				close();
//			}
//			return al_book;
//		}
		
		public ArrayList<bookDTO> searchBook3(String search) throws SQLException{
			  ArrayList<bookDTO> b_list = new ArrayList<bookDTO>();
			  
			  String sql=null;
			  getConnection();
				
					
			  
				/* rs = ps.executeQuery(); */
			  try{
			   
			   
			    sql = "select * from book where book_name like ? order by book_name asc";
			   
			    ps = conn.prepareStatement(sql);
			    String setReq = "%" + search + "%";
			    
			   ps.setString(1, setReq);
			   
			   
				rs = ps.executeQuery(); 
			   System.out.println("실행1");
			   while(rs.next()){
				   System.out.println("실행2");
				   bookDTO vo = new bookDTO();
				    vo.setBook_num(rs.getInt("book_num"));
				    vo.setBook_name(rs.getString("book_name"));
				    vo.setBook_author(rs.getString("book_author"));
				    vo.setBook_publisher(rs.getString("book_publisher"));
				    vo.setBook_date(rs.getString("book_date"));
				    vo.setBook_image(rs.getString("book_image"));
				    vo.setBook_category3(rs.getString("book_category3"));
				    System.out.println("실행3");
				    b_list.add(vo);
			   }
			  }catch(Exception e){
			   e.printStackTrace();
			  }finally{
			   close();
			  }
			  return b_list;
			 }
	  


	  	
          
   



}




