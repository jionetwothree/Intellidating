package com.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/commentService")
public class commentService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		//값 받아오기
		String sendNick = request.getParameter("sendNick");
		String sendCmt = request.getParameter("sendCmt");
		
		//CmtDTO(작성자닉네임, 댓글)
		//CmtDTO dto = new CmtDTO(sendNick, s);
				  
		
		//CmtDAO dao = new CmtDAO();
	}

}
