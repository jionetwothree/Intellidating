package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.choiceDAO;
import com.DAO.memberDAO;
import com.DTO.choiceDTO;
import com.DTO.memberDTO;

@WebServlet("/loginService")
public class loginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email = request.getParameter("email");
		String password = request.getParameter("pw");
		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		
		
		PrintWriter out = response.getWriter();
		memberDAO dao = new memberDAO();
		memberDTO dto = dao.loginMember(email, password);
		choiceDAO dao1 = new choiceDAO();
		choiceDTO dto1 = dao1.choicedata(mem_num);
		
		if (dto != null) {
			if(dto1 != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", dto);
			response.sendRedirect("main.jsp");
			System.out.println("로그인 성공!");
			}else {
				response.sendRedirect("analysis.jsp");
			}
		} else {
			System.out.println("로그인 실패!");
		}
	}

}
