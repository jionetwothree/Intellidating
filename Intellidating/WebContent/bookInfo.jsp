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
<link rel="stylesheet" href="style_bookInfo_HJ.css">
<title>책 정보 페이지</title>
</head>
<body>


<%
	memberDTO m_dto = (memberDTO)session.getAttribute("member");

		
	int bookNum = Integer.parseInt(request.getParameter("book"));
	System.out.println(bookNum);
	
	bookDAO b_dao = new bookDAO();
	
	bookDTO b_dto = b_dao.selectBookByNum(bookNum);

	
%>

	<!-- 책 정보 -->
	<div class="book_info">
		<img alt="책 이미지" src="<%=b_dto.getBook_image()%>">
		<div>
			<!-- 책제목 -->
			<h2 class="bookName"><%=b_dto.getBook_name()%></h2>
			
			<!-- 저자, 출판사, 출판일 -->
			<ul class="infoTop">
				<!-- 저자 -->
				<li>
					<h4>저자</h4>
					<em class="divi">|</em>
					<h4><%=b_dto.getBook_author()%></h4>
				</li>
				
				<!-- 출판사 -->
				<li>
					<h4>출판사</h4>
					<em class="divi">|</em>
					<h4><%=b_dto.getBook_publisher()%></h4>
				</li>
				
				<!-- 출판일 -->
				<li>
					<h4>출판일</h4>
					<em class="divi">|</em>
					<h4><%=b_dto.getBook_date()%></h4>
				</li>
			</ul>
			
			<!-- 책분류 --><ul class="infoBtm">
					<span><%=b_dto.getBook_category1()%></span>
					<span class="brkt">></span>
					<span><%=b_dto.getBook_category2()%></span>
					<span class="brkt">></span>
					<span><%=b_dto.getBook_category3()%></span>
				</li>
			</ul>
		</div>
	</div>
	
	<!-- 댓글 목록 -->
	
	<div class="comment_list">
	
	<%
	
	commentsDAO c_dao = new commentsDAO();
	ArrayList<commentsDTO> al = c_dao.selectComment(bookNum);
	
	
	
	for(int i = 0; i < al.size(); i++){%>
		<div class="cmtInfoBox">
				<!-- 책에 대한 코멘트 -->
				<div class="cmt_cont">
					<span class="txt"><%=al.get(i).getContent()%></span>
				</div>
				<!-- 날짜 및 작성자 -->
				<div class="cmt_etc">
					<span class="cmt_date"><%=al.get(i).getComment_date()%></span>
					<%
						memberDAO m_dao = new memberDAO();
						memberDTO com_mem_dto = m_dao.selectMember(al.get(i).getMem_num());
					%>
					<span class="divi">|</span>
					<span class="cmt_wtr"><%=com_mem_dto.getNickname()%></span>
				</div>
		</div>
		
	<%} %>
	

	<!-- 책 댓글 작성 -->
	<form action="commentService" method="post">
		<div class="cmtInput">
			<div>
				<input type="hidden" name="sendBookNum" value="<%=b_dto.getBook_num()%>"></div>
				<input type="hidden" name="sendMemNum" value="<%=m_dto.getNum()%>">
				<textarea name="sendCmt" id="cmt" rows="10" cols="30"></textarea>
			<div>
				<input type="submit" value="등록"></div>
			</div>
		</div>
	</form>
</body>
</html>