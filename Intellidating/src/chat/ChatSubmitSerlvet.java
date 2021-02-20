package chat;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/chatSubmitServlet")
public class ChatSubmitSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("비동기 통신 요청완료");

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html);charset=UTF-8");
		String chatName = request.getParameter("chatName");
		String chatContent = request.getParameter("chatContent");
		
		System.out.println("name : " + chatName);
		System.out.println("chatContent : " + chatContent);
		
		
		
		if(chatName == null || chatName.equals("") || chatContent == null || chatContent.equals("")) {
			response.getWriter().write("0");
		}
		else {
			response.getWriter().write(new ChatDAO().submit(chatName, chatContent)+ "");
		}
	}

}
