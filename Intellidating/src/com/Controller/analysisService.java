package com.Controller;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.bookDAO;
import com.DAO.choiceDAO;
import com.DAO.memberDAO;
import com.DAO.recommendationDAO;
//import com.DAO.printbookDAO;
import com.DTO.bookDTO;
import com.DTO.memberDTO;
//import com.DTO.printbookDTO;

@WebServlet("/analysisService")
public class analysisService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		
		String choice1 = request.getParameter("choice1");
		String choice2 = request.getParameter("choice2");
		String choice3 = request.getParameter("choice3");
		String choice4 = request.getParameter("choice4");
		String choice5 = request.getParameter("choice5");
		System.out.println(choice1);
		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		int club1 = Integer.parseInt(request.getParameter("predict1"));
		int club2 = Integer.parseInt(request.getParameter("predict2"));
		int club3 = Integer.parseInt(request.getParameter("predict3"));
		
		choiceDAO dao = new choiceDAO();
		recommendationDAO recom_dao = new recommendationDAO();
		
		int result = dao.choicedata(mem_num);
		if(result==0) {
			int cnt = dao.insertchoice(mem_num, choice1, choice2, choice3, choice4, choice5);
			if(cnt>0) {
				System.out.println("���� ���� �Ϸ�");
			}
		}
		else {
			System.out.println("���� ���� �����Ͱ� �ִ� ȸ���Դϴ�.");
			// ���� ������ �� �� ������ ������Ʈ �����ϰ� ����
		}
		
		int cnt = recom_dao.insertrecomclub(mem_num, club1, club2, club3);
		if(cnt>0) {
			System.out.println("��õ Ŭ�� ���� ����");
		} else {
			System.out.println("���� ����");
		}
		
		response.sendRedirect("main.jsp");
	}

}
