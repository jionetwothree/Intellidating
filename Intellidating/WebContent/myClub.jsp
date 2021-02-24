<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="style_myClub.css">

<title>Insert title here</title>
</head>
<body>


  <%
      memberDTO m_dto = (memberDTO) session.getAttribute("member");
   %>

   <header>
      <div id="title">

         <span>
            <a href="main.jsp">인텔리데이팅</a>
         </span>

      </div>
   </header>
   
   
   
   <nav>
		<div id="menu">
			<ul>
				<li><a href="before_searchBook.jsp">책 검색하기</a></li>
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
	

	
	<table  class ="table_as">
	<tr>
		<td><a href="chatting.jsp">독서모임1</a></td>
		</tr>
	<tr>
		<td><a href="chatting.jsp">독서모임2</a></td>
		</tr>
	<tr>
		<td><a href="chatting.jsp">독서모임3</a></td>
		</tr>
		
	</table>
	
	
	
		<footer>
		<div>
			<span>
				<a href="#">자주 묻는 질문</a>
			</span>

			<span>
				<a href="#">문의하기</a>
			</span>
			
			<span>
				<a href="#">블로그</a>
			</span>
			<br> <br> <br>
			<p>주식회사 인텔리데이팅</p>
		</div>
	</footer>
	


</body>
</html>