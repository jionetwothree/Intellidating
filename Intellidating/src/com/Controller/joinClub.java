package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DTO.clubDTO;
import com.DTO.memberDTO;

@WebServlet("/joinClub")
public class joinClub extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		memberDTO dto  = (memberDTO)session.getAttribute("member");
		String email = dto.getEmail();
		System.out.println(email);
		

	}

}
