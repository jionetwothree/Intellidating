package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.bookDAO;
import com.DAO.memberDAO;
import com.DTO.bookDTO;
import com.DTO.memberDTO;


@WebServlet("/searchBookService")
public class searchBookService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		String search_submit = request.getParameter("search_submit");
		System.out.println(search_submit);
		
		if(!search_submit.equals("")) {
			bookDAO dao = new bookDAO();
			ArrayList<bookDTO> al_book = null;
			try {
				al_book = dao.searchBook3(search_submit);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			// class java.util.ArrayList cannot be cast to class com.DTO.bookDTO
			
			if (al_book != null) {
				System.out.println("검색 성공!");
				request.setAttribute("bookDTO", al_book);
				RequestDispatcher rd = request.getRequestDispatcher("after_searchBook.jsp");
				rd.forward(request, response);
			} else {
				System.out.println("검색 실패!");
				response.sendRedirect("before_searchBook.jsp");
	
			}
			
		} else {
			response.sendRedirect("before_searchBook.jsp");
		}
		
		
	}
}