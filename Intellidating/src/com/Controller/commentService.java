package com.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DTO.commentsDTO;


@WebServlet("/commentService")
public class commentService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		//�� �޾ƿ���
		String sendCmt = request.getParameter("sendCmt");
		
		//commentsDTO(å ��ȣ, �ۼ��� ��ȣ, ��� ����, �ۼ�����)
		//commentsDTO dto = new commentsDTO();
				  
		
		//commentsDAO dao = new commentsDAO();
	}

}
