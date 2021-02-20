<%@page import="com.DTO.memberDTO"%>
<%@page import="com.DTO.clubDTO"%>
<%@page import="com.DAO.clubDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
function javascript(){
    self.close();   //자기자신창을 닫습니다.
}
</script>
</head>
<body>
	<%
		memberDTO m_dto = (memberDTO) session.getAttribute("member");
		String email = m_dto.getEmail();
		clubDAO dao = new clubDAO();
		clubDTO dto = dao.selectclub(2);
	%>
	<h1 id="<%=dto.getClub_name()%>"><%=dto.getClub_name()%></h1>
	<hr />
	<h2><%=dto.getClub_detail()%></h2>
<input type="submit" value="닫기" onclick="window.close()">
</body>
</html>