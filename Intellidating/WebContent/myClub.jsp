<%@page import="com.DTO.clubDTO"%>
<%@page import="com.DAO.clubDAO"%>
<%@page import="com.DAO.memberDAO"%>
<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style_myClub.css">

<title>Insert title here</title>
</head>
<body>



	<%
		memberDTO m_dto = (memberDTO) session.getAttribute("member");
		memberDAO mem_dao = new memberDAO();
		memberDTO mem_dto = mem_dao.selectMember(m_dto.getNum());
		clubDAO dao = new clubDAO();
		clubDTO dto1 = dao.selectclub(mem_dto.getMem_club1());
		clubDTO dto2 = dao.selectclub(mem_dto.getMem_club2());
		clubDTO dto3 = dao.selectclub(mem_dto.getMem_club3());
	%>


   <header>
      <div id="title">

         <span>
            <a href="main.jsp">intellidating</a>
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

   
   <%if(!"".equals(dto1)){ %>
   <div class="div.btn2">
      <button class ="btn2" onclick = "location.href='chat.jsp?club_name=<%=dto1.getClub_name() %>'"><%=dto1.getClub_name() %> 입장</button>
      </div>
   <% } else if(!"".equals(dto2)){%>
   <div class="div.btn2">
      <button class ="btn2" onclick = "location.href='chat.jsp?club_name=<%=dto2.getClub_name() %>'"><%=dto2.getClub_name() %> 입장</button>
      </div>
   <% } else if(!"".equals(dto3)){%>
   <div class="div.btn2">
      <button class ="btn2" onclick = "location.href='chat.jsp?club_name=<%=dto3.getClub_name() %>'"><%=dto3.getClub_name() %> 입장</button>
      </div>
    <%} %>
   
   
      <div id="foot">
         <div class="all">
            <span>
               <a href="question.html">자주 묻는 질문</a>
            </span>
            <span>
               <a href="#">문의하기</a>
            </span>
            <span>
               <a href="#">블로그</a></span>
            <span class="company">
            <br><br><br>
              주식회사 인텔리데이팅
              <br><br><br>
              </span>
         </div>
      </div>
   


</body>
</html>