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

		
	String bookNum = request.getParameter("book");
	System.out.println(bookNum);
	
	bookDAO dao = new bookDAO();
	System.out.println("실행1");
	
	bookDTO b_dto = dao.selectBookByNum(bookNum);
	System.out.println(b_dto);

	
%>

	<!-- 책 정보 -->
	<div class="book_info">
		<img alt="책 이미지" src="<%=b_dto.getBook_image()%>">
		<div>
			<!-- 책제목 -->
			<h2 class="bookName">개미</h2>
			
			<!-- 저자, 출판사, 출판일 -->
			<ul class="infoTop">
				<!-- 저자 -->
				<li>
					<h4>저자</h4>
					<em class="divi">|</em>
					<h4>베르나르 베르베르</h4>
				</li>
				
				<!-- 출판사 -->
				<li>
					<h4>출판사</h4>
					<em class="divi">|</em>
					<h4>열린책들</h4>
				</li>
				
				<!-- 출판일 -->
				<li>
					<h4>출판일</h4>
					<em class="divi">|</em>
					<h4>2001년 02월 15일</h4>
				</li>
			</ul>
			
			<!-- 책분류 --><ul class="infoBtm">
					<span>소설</span>
					<span class="brkt">></span>
					<span>프랑스소설</span>
					<span class="brkt">></span>
					<span>프랑스소설일반</span>
				</li>
			</ul>
		</div>
	</div>
	
	<!-- 댓글 목록 -->
	<div class="comment_list">
		<div class="cmtInfoBox">
				<!-- 책에 대한 코멘트 -->
				<div class="cmt_cont">
					<span class="txt">책 정말 재미있어요!!</span>
				</div>
				<!-- 날짜 및 작성자 -->
				<div class="cmt_etc">
					<span class="cmt_date">2021년 6월 12일</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">현진스 생일</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- 책에 대한 코멘트 -->
				<div class="cmt_cont">
					<span class="txt">책 정말 재미있어요!!</span>
				</div>
				<!-- 날짜 및 작성자 -->
				<div class="cmt_etc">
					<span class="cmt_date">2021년 6월 12일</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">현진스 생일</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- 책에 대한 코멘트 -->
				<div class="cmt_cont">
					<span class="txt">책 정말 재미있어요!!</span>
				</div>
				<!-- 날짜 및 작성자 -->
				<div class="cmt_etc">
					<span class="cmt_date">2021년 6월 12일</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">현진스 생일</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- 책에 대한 코멘트 -->
				<div class="cmt_cont">
					<span class="txt">책 정말 재미있어요!!</span>
				</div>
				<!-- 날짜 및 작성자 -->
				<div class="cmt_etc">
					<span class="cmt_date">2021년 6월 12일</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">현진스 생일</span>
				</div>
		</div>

	<!-- 책 댓글 작성 -->
	<form action="commentService" method="get">
		<div class="cmtInput">
			<div>
				<span><%= m_dto.getName()%></span>
			</div>
			<div>
				<textarea name="sendCmt" id="cmt" rows="10" cols="30"></textarea>
			</div>
			<div>
				<input type="submit" value="등록"></div>
			</div>
		</div>
	</form>
</body>
</html>