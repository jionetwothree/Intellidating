<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>채팅방</title>
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC:wght@500;600;700;900&display=swap"
	rel="stylesheet">
<style>
@import
	url("https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300italic,400,400italic,600")
	;

@import url("fontawesome-all.min.css");

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video, textarea, input {
	padding: 0;
	font-family: 'Noto Sans KR', sans-serif;
	font: inherit;
	vertical-align: baseline;
	text-decoration: none;
	color: inherit;
}
</style>
</head>
<body>
	<%
		memberDTO m_dto = (memberDTO) session.getAttribute("member");
		request.getParameter("EUC-KR");
		String club_name = request.getParameter("club_name");
	%>
	<br />
	<div class="chat" align="center">
		<div>
			<h1 style="font-size: 30px;">
				<a href="main.jsp">Intellidating - <%=club_name%></a>
			</h1>
		</div>
		<div>
		<div>
		<input type="text" value="공지사항" readonly style="text-align:center; width: 645px; height: 50px; font-size: 23px; font-weight:bold">
		</div>
		<div class="messages">
			<textarea id="messageTextArea"
				style="overflow-y: auto; background-image: url('background2.png'); color:white; no-repeat; background-attachment: fixed; background-position: center; font-size: 16px;"
				rows="30" cols="90"></textarea>
		</div>
		</div>
		<div>
			<form>
				<input id="user" type="hidden" value="<%=m_dto.getNickname()%>">
				<br>
				<input id="textMessage" autofocus type="text"
					placeholder="메시지를 입력해주세요." 
					style="width: 500px; height: 30px; font-size: 16px;"> <input
					id='btn' onclick="sendMessage()" style="WIDTH: 60pt; HEIGHT: 30pt"
					value="보내기" type="button">
			</form>
		</div>
	</div>
	<script type="text/javascript">
		var webSocket = new WebSocket(
				"ws://localhost:8083/Intellidating/broadsocket");
		var messageTextArea = document.getElementById("messageTextArea");
		webSocket.onopen = function(message) {
			messageTextArea.value += "\n"+"  <%=club_name%>" + " 채팅방에 입장하셨습니다.\n\n"+"  <%=m_dto.getNickname()%>" + "님이 입장했습니다.\n\n";
		};
		webSocket.onclose = function(message) {
			messageTextArea.value += "Server Disconnect...\n";
		};
		webSocket.onerror = function(message) {
			messageTextArea.value += "error...\n";
		};
		webSocket.onmessage = function(message) {
			messageTextArea.value += message.data + "\n";
		};
		function sendMessage() {
			var user = document.getElementById("user");
			var message = document.getElementById("textMessage");
			messageTextArea.value += "  "+user.value + "(나) >> " + message.value+ "\n\n";
			webSocket.send("{{" + user.value + "}}" + message.value);
			message.value = "";
		}
		function disconnect() {
			webSocket.close();
		}
	</script>
</body>
</html>

