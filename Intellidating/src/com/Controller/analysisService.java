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
import com.DAO.printbookDAO;
import com.DTO.bookDTO;
import com.DTO.memberDTO;
import com.DTO.printbookDTO;

@WebServlet("/analysisService")
public class analysisService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		choiceDAO dao = new choiceDAO();

		String[] choice = request.getParameterValues("choice");
		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		
		int result = dao.choicedata(mem_num);
		if(result==0) {
			int cnt = dao.insertchoice(mem_num, choice[0], choice[1], choice[2], choice[3], choice[4]);
			if(cnt>0) {
				System.out.println("���� ���� �Ϸ�");
			}
		}
		else {
			System.out.println("���� ���� �����Ͱ� �ִ� ȸ���Դϴ�.");
			// ���� ������ �� �� ������ ������Ʈ �����ϰ� ����
		}

	}

}
