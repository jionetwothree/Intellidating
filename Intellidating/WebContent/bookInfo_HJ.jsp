<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="style_bookInfo_HJ.css">
<title>å ���� ������</title>
</head>
<body>


<%
	memberDTO dto = (memberDTO)session.getAttribute("member");
%>

	<!-- å ���� -->
	<div class="book_info">
		<img alt="å �̹���" src="images/ant.jpg">
		<div>
			<!-- å���� -->
			<h2 class="bookName">����</h2>
			
			<!-- ����, ���ǻ�, ������ -->
			<ul class="infoTop">
				<!-- ���� -->
				<li>
					<h4>����</h4>
					<em class="divi">|</em>
					<h4>�������� ��������</h4>
				</li>
				
				<!-- ���ǻ� -->
				<li>
					<h4>���ǻ�</h4>
					<em class="divi">|</em>
					<h4>����å��</h4>
				</li>
				
				<!-- ������ -->
				<li>
					<h4>������</h4>
					<em class="divi">|</em>
					<h4>2001�� 02�� 15��</h4>
				</li>
			</ul>
			
			<!-- å�з� -->			<ul class="infoBtm">
					<span>�Ҽ�</span>
					<span class="brkt">></span>
					<span>�������Ҽ�</span>
					<span class="brkt">></span>
					<span>�������Ҽ��Ϲ�</span>
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
				<textarea name="sendCmt" id="cmt" rows="10" cols="30" name="cmt"></textarea>
			</div>
			<div>
				<input type="submit" value="���"></div>
			</div>
		</div>
	</form>
</body>
</html>