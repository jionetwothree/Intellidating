<%@page import="com.DTO.memberDTO"%>
<%@page import="com.DTO.clubDTO"%>
<%@page import="com.DAO.clubDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" sizes="192x192"
	href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>

function openPopup(url) {

window.open(url, 'new', 'width=400, height=450, toolbars=no, scrollbars=yes');
}

</script>
	<%
		memberDTO m_dto = (memberDTO) session.getAttribute("member");

		clubDAO dao = new clubDAO();
		clubDTO dto = dao.selectclub(2);
	%>
	<div id="#">
		<header>
			<p>
			<h2>인텔리데이팅</h2>
			</p>
		</header>
		<ul>
			<li><a href="#">책 검색하기</a></li>
			<%
				if (m_dto == null) {
			%>
			<li><a href="login.html">로그인</a></li>
			<li><a href="join.jsp">회원가입</a></li>
			<%
				} else {
			%>
			<li><a href="mypage.html">마이페이지</a>
				<ul>
					<li><a href="mytaste.html">마이취향</a></li>
					<li><a href="myinteli.html">마이모임</a></li>
					<li><a href="account.html">계정 설정</a></li>
				</ul></li>
			<li><a href="logoutService">로그아웃</a></li>
		</ul>
		<%
			}
		%>
		<hr />
		<div>
		<table>
							<caption><h2>모임목록</h2></caption>
							<tr>
								<td>모임이름</td>
								<td></td>							
							</tr>
							<%
								ArrayList<clubDTO> al = dao.selectcb();
								for(int i=0;  i<al.size(); i++){
							
									out.print("<tr>");
									
									out.print("<td><a href=javascript:openPopup('bookpop.jsp')>"+al.get(i).getClub_name()+"</a></td>"); 
									if(m_dto!=null){
									out.print("<td><a href='joinClub?clubname="+al.get(i).getClub_name()+"'>가입하기</a></td>");
									}
									out.print("</tr>");
									}
									
							%>
						</table>
			
		</div>

		<p>
			<a href="#">자주 묻는 질문</a>
		</p>
		<p>
			<a href="#">문의하기</a>
		</p>
		<p>
			<a href="#">블로그</a>
		</p>
		<br> <br> <br>
		<p>주식회사 인텔리데이팅</p>

	</div>
</body>
</html>