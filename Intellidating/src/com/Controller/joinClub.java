package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.clubDAO;
import com.DAO.memberDAO;
import com.DTO.clubDTO;
import com.DTO.memberDTO;

@WebServlet("/joinClub")
public class joinClub extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		memberDTO dto  = (memberDTO)session.getAttribute("member");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		int club_num = Integer.parseInt(request.getParameter("clubnum"));
		System.out.println(club_num);
		int mem_num=dto.getNum();
		System.out.println(mem_num);
		clubDAO c_dao = new clubDAO();
		int cnt = c_dao.joinclub(club_num, mem_num);
		if(cnt>0) {
			System.out.println("성공");
			out.println("<script>alert('가입 완료!'); location.href='"+"main.jsp"+"';</script>"); 
			out.flush();
		}else {
			System.out.println("실패");
			out.println("<script>alert('가입 실패!'); location.href='"+"main.jsp"+"';</script>"); 
			out.flush();
			
		}

	}

}
