package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.DAO.clubDAO;
import com.DTO.clubDTO;



@WebServlet("/selectClub")
public class selectClub extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession();
//		memberDTO dto  = (memberDTO)session.getAttribute("member");
		String club_num = request.getParameter("clubnum");
		System.out.println(club_num);
		clubDAO dao = new clubDAO();
		clubDTO c_dto = dao.selectclub(Integer.parseInt(club_num));
		request.setAttribute("name", c_dto.getClub_name());
		request.setAttribute("detail", c_dto.getClub_detail());
		request.setAttribute("num", club_num);
		RequestDispatcher rd = request.getRequestDispatcher("joinclub.jsp");
		rd.forward(request, response);
//		response.sendRedirect("joinclub.jsp");
		
	}

}
