package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

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

@WebServlet("/loginService")
public class searchBookService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String search_submit = request.getParameter("search_submit");
		
		PrintWriter out = response.getWriter();
		
		bookDAO dao = new bookDAO();
		bookDTO dto = dao.selectBook(search_submit);
		
		if (dto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", dto);
			response.sendRedirect("loginmain.jsp");
			System.out.println("�α��� ����!");
		} else {
			System.out.println("�α��� ����!");
		}
	}

}