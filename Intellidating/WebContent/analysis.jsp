<%@page import="com.DTO.printbookDTO"%>
<%@page import="com.DAO.printbookDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DTO.bookDTO"%>
<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" sizes="192x192" href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<link rel="stylesheet" type="text/css" href="style_analysis.css">
<link rel="stylesheet" type="text/css" href="css/main2.css">
<style>
	a{
	text-decoration: none;
		font-color:black;
}
</style>
<SCRIPT LANGUAGE="JavaScript">


<!--
function fchk() {
    var chk_obj = document.getElementsByName("choice");
    var chk_leng = chk_obj.length;
    var checked = 0;
    for (i=0; i < chk_leng; i++) {
        if (chk_obj[i].checked == true) {
            checked += 1;
        }
    }
    if (checked < 5 ) {
        alert("항목을 5개 선택해주세요");
        return false;
    }
}

// 정해진 개수 이상 체크 불가.
var count = 0;
function check_q1(chk_obj) {
    if(chk_obj.checked == true) {
        count++;
    } else {
        count--;
    }
    if(count <= 5) {
        return true;
    } else {
        count--;
        return false;
    }
}

function check(obj,condition, n) {
    if(condition == false){
        obj.checked = false;
        alert(n + "개를 초과 선택 불가합니다");
    }
}
//-->
</SCRIPT>

</head>

<body>
<div id="layout">
	<%
		memberDTO m_dto = (memberDTO) session.getAttribute("member");
		printbookDAO dao = new printbookDAO();
		ArrayList<printbookDTO> al_book = dao.allBook();
	%>
	 <header>
			<div id="wrapper">

				<h1 id="title"><a href="main.jsp">intellidating</a></h1>
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
	

		<div class="explain">
			<p><span style="font-weight: bold"><%=m_dto.getNickname()%></span>님 관심이 가는 책 5권을 골라주세요!<p>

		</div>
		<form name="form" action="http://localhost:8084/intellidating/predict" method="post" onsubmit="return fchk();">
			<div>
			<table>
				<%
				out.println("<tr>");
					for(int i=0;i<al_book.size();i++){
						out.println("<td align='center' height='260px' width='195px'><img src='"+al_book.get(i).getBook_image()+"' height='260px' width='195px'><br>");
						out.println("<input style='zoom:2.0;' type='checkbox' name='choice'  id='checkbox_agree1' onclick='check(this,check_q1(this),5);' value="+al_book.get(i).getBook_category3()+">");
						out.println(al_book.get(i).getBook_name()+"</td>");
						if((i+1)%5==0){
							out.println("</tr>");
							out.println("<tr>");
						}
					}
				%>
				<input type="hidden" name="mem_num" value=<%=m_dto.getNum() %> >
				<tr align='center'><td colspan="5"><input style="WIDTH: 90pt; HEIGHT: 45pt" type="submit" value="제출하기" class="btngray"></td></tr>
			</table>
			</div>
		</form>
	</div>
	</div>


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

