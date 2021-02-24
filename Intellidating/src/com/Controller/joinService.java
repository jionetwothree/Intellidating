package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;



@WebServlet("/joinService")
public class joinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nick");
		System.out.println(name);
		memberDAO dao = new memberDAO();
		int cnt = dao.joinMember(email, password, name, nickname);
		if (cnt > 0) {
			System.out.println("가입성공");
			response.sendRedirect("main.jsp");
		} else {
			System.out.println("실패");
			response.sendRedirect("login.html");
		}

	}

}
