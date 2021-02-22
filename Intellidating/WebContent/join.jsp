<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		function email_change() {

			if (document.join.email.options[document.join.email.selectedIndex].value == '0') {

				document.join.email2.disabled = true;

				document.join.email2.value = "";

			}

			if (document.join.email.options[document.join.email.selectedIndex].value == '9') {

				document.join.email2.disabled = false;

				document.join.email2.value = "";

				document.join.email2.focus();

			} else {

				document.join.email2.disabled = true;

				document.join.email2.value = document.join.email.options[document.join.email.selectedIndex].value;

			}

		}
	</script>
	<center>
		<form name="join" action="joinService">

			<input type="text" name="email1" value="이메일" onfocus="this.value='';">
			@ <input type="text" name="email2" value="" disabled> <select
				name="email" onchange="email_change()">

				<option value="0">선택하세요</option>
				<option value="9">직접입력</option>
				<option value="naver.com">naver.com</option>
				<option value="nate.com">nate.com</option>
				<option value="hanmail.com">hanmail.com</option>
				<option value="yahoo.co.kr">yahoo.co.kr</option>
				<option value="gmail.com">gmail.com</option>

			</select>

			<br> <input type="text" placeholder="이름을 입력하세요" name="name">
			<br> <input type="password" placeholder="PW를 입력하세요" name="password">
			<br> <input type="text" placeholder="닉네임" name="nick"> <br>
			<input type = "submit" value="가입">
		</form>
	</center>
</body>
</html>