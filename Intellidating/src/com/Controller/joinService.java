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
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email");
		String email = email1+"@"+email2;
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nick");

		memberDAO dao = new memberDAO();
		int cnt = dao.joinMember(email, password, name, nickname);
		if (cnt > 0) {
			response.sendRedirect("nologinmain.jsp");
		} else {
			System.out.println("가입 실패");
		}

	}

}
