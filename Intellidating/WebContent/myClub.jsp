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
            <a href="main.jsp">���ڸ�������</a>
         </span>

      </div>
   </header>
   
   
   
   <nav>
		<div id="menu">
			<ul>
				<li><a href="before_searchBook.jsp">å �˻��ϱ�</a></li>
				<%
					if (m_dto == null) {
				%>
				<li><a href="login.html">�α���</a></li>
				<li><a href="join.jsp">ȸ������</a></li>
				<%
					} else {
				%>
				<li><a href="mypage.jsp">����������</a>
				<li><a href="logoutService">�α׾ƿ�</a></li>
			</ul>
			<%
				}
				
			%>
		</div>
	</nav>
	

	
	<table  class ="table_as">
	<tr>
		<td><a href="chatting.jsp">��������1</a></td>
		</tr>
	<tr>
		<td><a href="chatting.jsp">��������2</a></td>
		</tr>
	<tr>
		<td><a href="chatting.jsp">��������3</a></td>
		</tr>
		
	</table>
	
	
	
		<footer>
		<div>
			<span>
				<a href="#">���� ���� ����</a>
			</span>

			<span>
				<a href="#">�����ϱ�</a>
			</span>
			
			<span>
				<a href="#">��α�</a>
			</span>
			<br> <br> <br>
			<p>�ֽ�ȸ�� ���ڸ�������</p>
		</div>
	</footer>
	


</body>
</html>