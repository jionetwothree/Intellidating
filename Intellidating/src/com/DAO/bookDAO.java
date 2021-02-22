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
	
	
	  public bookDTO searchBook(String book_name) {
		
		bookDTO dto = null;
		
		try {
			getConnection();
			String sql = "SELECT * FROM BOOK WHERE = ?";
	
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
		
//		public ArrayList<bookDTO> searchBook3(String search) throws SQLException{
//			  ArrayList<bookDTO> b_list = new ArrayList<bookDTO>();
//			  
//			  String sql=null;
//			  getConnection();
//				
//					
//				rs = ps.executeQuery();
//			  try{
//			   
//			   
//			    sql = "select * from book where book_name like ? order by name asc";
//			   
//			    ps = conn.prepareStatement(sql);
//			    String setReq = "%" + search + "%";
//			    
//			   ps.setString(1, setReq);
//			   rs = ps.executeQuery();
//			   
//			   while(rs.next()){
//				   bookDTO vo = new bookDTO();
//				    vo.setBook_num(rs.getInt("book_num"));
//				    vo.setBook_name(rs.getString("book_name"));
//				    vo.setBook_author(rs.getString("book_author"));
//				    vo.setBook_publisher(rs.getString("book_publisher"));
//				    vo.setBook_date(rs.getString("book_date"));
//				    vo.setBook_image(rs.getString("book_image"));
//				    
//				    b_list.add(vo);
//			   }
//			  }catch(Exception e){
//			   e.printStackTrace();
//			  }finally{
//			   close();
//			  }
//			  return b_list;
//			 }
	  
	  public ArrayList<MemberVO> getMemberlist(String keyField, String keyWord){
	       
	        ArrayList<MemberVO> list = new ArrayList<MemberVO>();
	       
	        try{//실행
	           
	            String sql ="select * from MEMBER ";
	           
	            if(keyWord != null && !keyWord.equals("") ){
	                sql +="WHERE "+keyField.trim()+" LIKE '%"+keyWord.trim()+"%' order by id";
	            }else{//모든 레코드 검색
	                sql +="order by id";
	            }
	            System.out.println("sql = " + sql);
	            st = con.createStatement();
	            rs = st.executeQuery(sql);
	           
	            while(rs.next()){
	                MemberVO vo = new MemberVO();
	               
	                vo.setId(rs.getString(1));
	                vo.setPwd(rs.getString(2));
	                vo.setName(rs.getString(3));
	                vo.setAge(rs.getInt(4));
	                vo.setAddr(rs.getString(5));
	                vo.setJumin1(rs.getString(6));
	                vo.setJumin2(rs.getString(7));
	               
	                list.add(vo);
	            }
	        }catch(Exception e){           
	            System.out.println(e+"=> getMemberlist fail");         
	        }finally{          
	            db_close();
	        }      
	        return list;
	    } 


	  	
          
   



}




