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
<title>å ���� ������</title>
</head>
<body>

<%
	memberDTO m_dto = (memberDTO)session.getAttribute("member");

		
	String bookNum = request.getParameter("book");
	System.out.println(bookNum);
	
	bookDAO dao = new bookDAO();
	
	bookDTO b_dto = dao.selectBookByNum(bookNum);

	
%>

	<!-- å ���� -->
	<div class="book_info">
		<img alt="å �̹���" src="<%=b_dto.getBook_image()%>">
		<div>
			<!-- å���� -->
			<h2 class="bookName"><%=b_dto.getBook_name()%></h2>
			
			<!-- ����, ���ǻ�, ������ -->
			<ul class="infoTop">
				<!-- ���� -->
				<li>
					<h4>����</h4>
					<em class="divi">|</em>
					<h4><%=b_dto.getBook_author()%></h4>
				</li>
				
				<!-- ���ǻ� -->
				<li>
					<h4>���ǻ�</h4>
					<em class="divi">|</em>
					<h4><%=b_dto.getBook_publisher()%></h4>
				</li>
				
				<!-- ������ -->
				<li>
					<h4>������</h4>
					<em class="divi">|</em>
					<h4><%=b_dto.getBook_date()%></h4>
				</li>
			</ul>
			
			<!-- å�з� --><ul class="infoBtm">
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
		<div class="cmtInfoBox">
				<!-- å�� ���� �ڸ�Ʈ -->
				<div class="cmt_cont">
					<span class="txt">å ���� ����־��!!</span>
				</div>
				<!-- ��¥ �� �ۼ��� -->
				<div class="cmt_etc">
					<span class="cmt_date">2021�� 6�� 12��</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">������ ����</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- å�� ���� �ڸ�Ʈ -->
				<div class="cmt_cont">
					<span class="txt">å ���� ����־��!!</span>
				</div>
				<!-- ��¥ �� �ۼ��� -->
				<div class="cmt_etc">
					<span class="cmt_date">2021�� 6�� 12��</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">������ ����</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- å�� ���� �ڸ�Ʈ -->
				<div class="cmt_cont">
					<span class="txt">å ���� ����־��!!</span>
				</div>
				<!-- ��¥ �� �ۼ��� -->
				<div class="cmt_etc">
					<span class="cmt_date">2021�� 6�� 12��</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">������ ����</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- å�� ���� �ڸ�Ʈ -->
				<div class="cmt_cont">
					<span class="txt">å ���� ����־��!!</span>
				</div>
				<!-- ��¥ �� �ۼ��� -->
				<div class="cmt_etc">
					<span class="cmt_date">2021�� 6�� 12��</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">������ ����</span>
				</div>
		</div>

	<!-- å ��� �ۼ� -->
	<form action="commentService" method="get">
		<div class="cmtInput">
			<div>
				<span><%= m_dto.getName()%></span>
			</div>
			<div>
				<textarea name="sendCmt" id="cmt" rows="10" cols="30"></textarea>
			</div>
			<div>
				<input type="submit" value="���"></div>
			</div>
		</div>
	</form>
</body>
</html>