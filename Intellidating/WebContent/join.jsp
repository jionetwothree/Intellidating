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

			<input type="text" name="email1" value="�̸���" onfocus="this.value='';">
			@ <input type="text" name="email2" value="" disabled> <select
				name="email" onchange="email_change()">

				<option value="0">�����ϼ���</option>
				<option value="9">�����Է�</option>
				<option value="naver.com">naver.com</option>
				<option value="nate.com">nate.com</option>
				<option value="hanmail.com">hanmail.com</option>
				<option value="yahoo.co.kr">yahoo.co.kr</option>
				<option value="gmail.com">gmail.com</option>

			</select>

			<br> <input type="text" placeholder="�̸��� �Է��ϼ���" name="name">
			<br> <input type="password" placeholder="PW�� �Է��ϼ���" name="password">
			<br> <input type="text" placeholder="�г���" name="nick"> <br>
			<input type = "submit" value="����">
		</form>
	</center>
</body>
</html>