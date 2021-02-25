package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.commentsDAO;
import com.DAO.printbookDAO;
import com.DTO.commentsDTO;


@WebServlet("/commentService")
public class commentService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		//�� �޾ƿ���
		int sendBook = Integer.parseInt(request.getParameter("sendBookNum"));
		int sendName = Integer.parseInt(request.getParameter("sendMemNum"));
		String sendCmt = request.getParameter("sendCmt");
		
		commentsDAO dao = new commentsDAO();
		
		int cnt = dao.insertComment(sendBook, sendName, sendCmt);
		
		if(cnt>0) {
			System.out.println("��� �ۼ� ����");

			response.sendRedirect("bookInfo.jsp?book="+sendBook);

		}else {
			System.out.println("��� �ۼ� ����");

			response.sendRedirect("bookInfo.jsp?book="+sendBook);

		}
		//commentsDTO(å ��ȣ, �ۼ��� ��ȣ, ��� ����)
//		commentsDTO dto = new commentsDTO();
//				  


	}
}
