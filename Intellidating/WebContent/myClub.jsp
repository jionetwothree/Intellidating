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
            </nav>
         </div>
      </header>

   
   
   <div class="div.btn">
      <button class ="btn" onclick = "location.href='chatting.jsp'">���� ����1 ����</button>
      </div>
   <div class="div.btn2">
      <button class ="btn2" onclick = "location.href='chatting.jsp'">���� ����2 ����</button>
      </div>
   <div class="div.btn3">
      <button class ="btn3" onclick = "location.href='chatting.jsp'">���� ����3 ����</button>
      </div>
   
   
   <div id="foot">
      <div class="all">
         <span> <a href="question.html">���� ���� ����</a>
         </span> <span> <a href="#">�����ϱ�</a>
         </span> <span> <a href="#">��α�</a></span> <span class="company"> <br>
            <br> <br> �ֽ�ȸ�� ���ڸ������� <br> <br> <br>
         </span>
      </div>
   </div>
   


</body>
</html>