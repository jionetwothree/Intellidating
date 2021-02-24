package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.bookDAO;
import com.DAO.memberDAO;
import com.DAO.recommendationDAO;
import com.DTO.bookDTO;
import com.DTO.memberDTO;
import com.DTO.recommendationDTO;

@WebServlet("/searchBookService")
public class searchBookService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int mem_num=0;
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		String search_submit = request.getParameter("search_submit");
		mem_num = Integer.parseInt(request.getParameter("mem_num"));
		recommendationDAO recom_dao = new recommendationDAO();
		String search1="", search2="";

		if (!search_submit.equals("")) {
			bookDAO dao = new bookDAO();
			ArrayList<bookDTO> al_book = null;
			try {
				al_book = dao.searchBook3(search_submit);
				//System.out.println(al_book.get(0).getBook_image());

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			// class java.util.ArrayList cannot be cast to class com.DTO.bookDTO

			if (al_book != null) {
				System.out.println("검색 성공!");
				request.setAttribute("bookDTO", al_book);
				Cookie cookie = null;
				try {
					String id = null;
					Cookie[] cookies = request.getCookies();
					for (int i = 0; i < cookies.length; i++) {
						String name = cookies[i].getName();
						if (name.equals("search1")) {
							search1 = URLDecoder.decode(cookies[i].getValue(), "utf-8");
						}else if(name.equals("search2")) {
							search2 = URLDecoder.decode(cookies[i].getValue(), "utf-8");
						}
					}
					for (int i = 0; i < cookies.length; i++) {
						String name = cookies[i].getName();
						if (name.equals("count")) {
							id = URLDecoder.decode(cookies[i].getValue(), "utf-8");
							if (id.equals("1")) {
								cookie = new Cookie("search1", URLEncoder.encode(search_submit, "UTF-8"));
								cookie.setMaxAge(60 * 60 * 24 * 30);
								response.addCookie(cookie);
								response.addCookie(new Cookie("count", "2"));
							}else if(id.equals("2")) {
								cookie = new Cookie("search2", URLEncoder.encode(search_submit, "UTF-8"));
								cookie.setMaxAge(60 * 60 * 24 * 30);
								response.addCookie(cookie);
								response.addCookie(new Cookie("count", "3"));
							}else {
								cookie = new Cookie("search3", URLEncoder.encode(search_submit, "UTF-8"));
								cookie.setMaxAge(60 * 60 * 24 * 30);
								response.addCookie(cookie);
								response.addCookie(new Cookie("count", "1"));
								int cnt = recom_dao.insertrecombook(mem_num, search1, search2, search_submit);
							}
						}
					}

				} catch (Exception e) {

				}
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