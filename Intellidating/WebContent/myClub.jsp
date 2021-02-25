<%@page import="com.DTO.clubDTO"%>
<%@page import="com.DAO.clubDAO"%>
<%@page import="com.DAO.memberDAO"%>
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


   <div id="layout">
      <%
      memberDTO m_dto = (memberDTO) session.getAttribute("member");
         %>
      <header>
         <div id="wrapper">

            <h1 id="title"><a href="main.jsp" >intellidating</a></h1>
            <nav>
               <ul class="menu" style="display: inline-block;">
                  <%
               if (m_dto == null) {
            %>
                  <li><a href="login.html">로그인/회원가입</a></li>

                  <%
               } else {
            %>
                  <li><a href="analysis.jsp">추천받기</a>
                  <li><a href="before_searchBook.jsp">책 검색하기</a></li>
                  <li><a href="myClub.jsp">마이모임</a>
                  <li><a href="logoutService">로그아웃</a></li>
               </ul>
               <%
               }
            %>
            </nav>
         </div>
      </header>

   
   
   <div class="div.btn">
      <button class ="btn" onclick = "location.href='chatting.jsp'">독서 모임1 입장</button>
      </div>
   <div class="div.btn2">
      <button class ="btn2" onclick = "location.href='chatting.jsp'">독서 모임2 입장</button>
      </div>
   <div class="div.btn3">
      <button class ="btn3" onclick = "location.href='chatting.jsp'">독서 모임3 입장</button>
      </div>
   
   
   <div id="foot">
      <div class="all">
         <span> <a href="question.html">자주 묻는 질문</a>
         </span> <span> <a href="#">문의하기</a>
         </span> <span> <a href="#">블로그</a></span> <span class="company"> <br>
            <br> <br> 주식회사 인텔리데이팅 <br> <br> <br>
         </span>
      </div>
   </div>
   


</body>
</html>