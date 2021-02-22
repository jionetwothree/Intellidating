
<%@page import="com.DTO.clubDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.clubDAO"%>
<%@page import="com.DTO.recommendationDTO"%>
<%@page import="com.DAO.recommendationDAO"%>
<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" sizes="192x192"
	href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="style_main.css">
</head>
<body>
	<%
		memberDTO m_dto = (memberDTO) session.getAttribute("member");
	%>
	<header>
		<div id="title">

			<p>
				<a href="main.jsp">인텔리데이팅</a>
			</p>

		</div>
	</header>

	<nav>
		<div id="menu">
			<ul>
				<li><a href="searchbook.jsp">책 검색하기</a></li>
				<%
					if (m_dto == null) {
				%>
				<li><a href="login.html">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
				<%
					} else {
				%>
				<li><a href="mypage.jsp">마이페이지</a>
				<li><a href="logoutService">로그아웃</a></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>

	<div id="banner">
		<%
			if (m_dto == null) {
		%>

		<a href="login.html">인텔리데이팅 시작하기</a>
		<%
			} else {
		%>
		<a href="rule.html">인텔리데이팅 이용규칙</a>
		<%
			}
		%>
	</div>

	<div id="explain">
		<section>
			<h2>
				<%
					if (m_dto != null) {
				%>
				<%=m_dto.getNickname()%>
				님의 취향은 #소설 #로맨스 #주식투자(이)군요!
				<%
					}
				%>
			</h2>
		</section>
	</div>

	<div class="clubs">
		<section>
			<%
				if (m_dto == null) {
			%>
				<div class="clubtopic">
					<p>
						<!-- 인기있는 책 -->
					</p>
				</div>
				<div class="all">
					<p>
						<a href="#">전체보기</a>
					</p>
				</div>
		</section>
			<section class="clubs">
				<div class="reel">
					<div>
						<a href="#" class="image featured"><img src="#" alt="" /></a>
					</div>

					<div>
						<a href="#" class="image featured"><img src="#" alt="" /></a>
					</div>

					<div>
						<a href="#" class="image featured"><img src="#" alt="" /></a>
					</div>

					<div>
						<a href="#" class="image featured"><img src="#" alt="" /></a>
					</div>

					<div>
						<a href="#" class="image featured"><img src="#" alt="" /></a>
					</div>

					<div>
						<a href="#" class="image featured"><img src="#" alt="" /></a>
					</div>

					<div>
						<a href="#" class="image featured"><img src="#" alt="" /></a>
					</div>

					<div>
						<a href="#" class="image featured"><img src="#" alt="" /></a>
					</div>

					<div>
						<a href="#" class="image featured"><img src="#" alt="" /></a>
					</div>

					<div>
						<a href="#" class="image featured"><img src="#" alt="" /></a>
					</div>

				</div>
			</section>

			<div id="clubs">
				<div class="clubtopic">
					<p>
					 <!-- 인기있는 책 -->
					</p>
				</div>
				<div class="all">
					<p>
						<a href="#">전체보기</a>
					</p>
				</div>
				<section class="clubs">
					<div class="reel">
						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

					</div>
				</section>
			</div>
			<%
				} else {
			%>
			<p>
				<%
					recommendationDAO recom_dao = new recommendationDAO();
					recommendationDTO recom_dto = recom_dao.selectrecomclub(m_dto.getNum());
					clubDAO club_dao = new clubDAO();
					ArrayList<clubDTO> al_club = club_dao.selectallclub(recom_dto);
				%>
			
			<div id="clubs">
				<div class="clubtopic">
					<p>
						<!-- 인기있는 책 -->
					</p>
				</div>
				<div class="all">
					<p>
						<a href="#">전체보기</a>
					</p>
				</div>
				<section class="clubs">
					<div class="reel">
						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

					</div>
				</section>
			</div>

			<div id="clubs">
				<div class="clubtopic">
					<p>
						<!-- 인기있는 책 -->
					</p>
				</div>
				<div class="all">
					<p>
						<a href="#">전체보기</a>
					</p>
				</div>
				<section class="clubs">
					<div class="reel">
						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

						<div>
							<a href="#" class="image featured"><img src="#" alt="" /></a>
						</div>

					</div>
				</section>

			</div>
			<%
				}
			%>
			<footer>
				<div>
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
			</footer>
</body>

</html>