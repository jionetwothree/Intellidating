package com.Controller;

import java.io.IOException;
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

@WebServlet("/analysisService")
public class analysisService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		memberDTO dto = (memberDTO)session.getAttribute("member");
		String nickname = dto.getNickname();
		
		bookDTO dto1 = (bookDTO)session.getAttribute("book");
		String bookimage = dto1.getBook_image();
		

		
		
		
	}

}
