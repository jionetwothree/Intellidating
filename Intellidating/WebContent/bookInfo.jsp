<%@page import="com.DAO.memberDAO"%>
<%@page import="com.DTO.commentsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.commentsDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="javax.websocket.SendResult"%>
<%@page import="com.DAO.bookDAO"%>
<%@page import="com.DTO.bookDTO"%>
<%@ page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.net.URLDecoder"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<link rel="stylesheet" href="style_bookInfo.css">
<title>å ���� ������</title>
</head>
<body>



	<%
		memberDTO m_dto = (memberDTO) session.getAttribute("member");

		int bookNum = Integer.parseInt(request.getParameter("book"));
		System.out.println(bookNum);

		bookDAO b_dao = new bookDAO();

		bookDTO b_dto = b_dao.selectBookByNum(bookNum);
	%>
	
	<div id="layout">
		<header>
			<div id="title">
				<span> <a href="main.jsp">intellidating</a>
				</span>
			</div>
		</header>

		<nav>
			<div id="menu">
				<ul style="display: inline-block;">
					<%
						if (m_dto == null) {
					%>
					<li><a href="login.html">�α���/ȸ������</a></li>

					<%
						} else {
					%>
					<li><a href="analysis.jsp">��õ�ޱ�</a>
					<li><a href="before_searchBook.jsp">å �˻��ϱ�</a></li>
					<li><a href="myClub.jsp">���̸���</a>
					<li><a href="logoutService">�α׾ƿ�</a></li>
				</ul>
				<%
					}
				%>
			</div>
		</nav>

		<!-- å ���� -->
		<div class="book_info">
			<img class="book_img" alt="å �̹���" src="<%=b_dto.getBook_image()%>">
			<div class="info">
				<!-- å���� -->
				<h2 class="bookName"><%=b_dto.getBook_name()%></h2>
				<br>
				<!-- ����, ���ǻ�, ������ -->

				<ul class="infoTop">
					<!-- ���� -->
					<li>
						<h4>���� /</h4>&nbsp;
						<h4><%=b_dto.getBook_author()%></h4>
					</li>

					<!-- ���ǻ� -->
					<li>
						<h4>���ǻ� / </h4>&nbsp;
						<h4><%=b_dto.getBook_publisher()%></h4>
					</li>

					<!-- ������ -->
					<li>
						<h4>������ / </h4>&nbsp; 
						<h4><%=b_dto.getBook_date()%></h4>
					</li>
					<br>
					<br>
					
				
				<!-- å�з� -->
					<li>
					<span><%=b_dto.getBook_category1()%></span>
					<span class="brkt">></span>
					<span><%=b_dto.getBook_category2()%></span>
					<span class="brkt">></span>
					<span><%=b_dto.getBook_category3()%></span>
					</li>
				</ul>
			</div>
		</div>

		<!-- ��� ��� -->

		<div class="comment_list">

			<%
				commentsDAO c_dao = new commentsDAO();
				ArrayList<commentsDTO> al = c_dao.selectComment(bookNum);

				for (int i = 0; i < al.size(); i++) {
			%>
			
			<div class="cmtInfoBox">
			
				<!-- å�� ���� �ڸ�Ʈ -->
				<div class="cmt_cont">
					<span class="txt"><%=al.get(i).getContent()%></span>
				</div>
				<!-- ��¥ �� �ۼ��� -->
				<div class="cmt_etc">
					<span class="cmt_date"><%=al.get(i).getComment_date()%></span>
					<%
						memberDAO m_dao = new memberDAO();
						memberDTO com_mem_dto = m_dao.selectMember(al.get(i).getMem_num());
					%>
					<span class="divi">|</span> <span class="cmt_wtr"><%=com_mem_dto.getNickname()%></span>
				</div>
			</div>


			<%
				}
			%>


			<!-- å ��� �ۼ� -->

			<form action="commentService" method="post">
				<div class="cmtInput">
					<div>
						<input type="hidden" name="sendBookNum"
							value="<%=b_dto.getBook_num()%>">
					</div>
					<input type="hidden" name="sendMemNum" value="<%=m_dto.getNum()%>">
					<textarea name="sendCmt" id="cmt" rows="10" cols="30"></textarea>
					<div>
						<input type="submit" value="���">
					</div>
				</div> 
			</form>
		</div>
	</div>


		<div id="foot" style="background-color:#E7E7E7;">
			<div class="all">
		<span> <a href="question.html">���� ���� ����</a>
		</span> <span> <a href="#">�����ϱ�</a>
		</span> <span> <a href="#">��α�</a></span> <span class="company"> <br>
			<br><br><br><br><br><br> �ֽ�ȸ�� ���ڸ������� <br> <br> <br>
		</span>
	</div>
</div> 

</body>
</html>

