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
		
		//�� �޾ƿ���
		String sendNick = request.getParameter("sendNick");
		String sendCmt = request.getParameter("sendCmt");
		
		//CmtDTO(�ۼ��ڴг���, ���)
		//CmtDTO dto = new CmtDTO(sendNick, s);
				  
		
		//CmtDAO dao = new CmtDAO();
	}

}
