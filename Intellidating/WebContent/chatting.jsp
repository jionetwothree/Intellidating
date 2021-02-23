<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
	<mete name="viewport" content="width=device-width, initial-scale=1"> 
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	
	<title>JSP AJAX 실시간 익명 채팅 사이트</title>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script scr="js/bootstrap.js"></script>
	<script type="text/javascript">
		
	var lastID = 0;
	function submitFunction() {
			var chatName = $('#chatName').val();
			var chatContent = $('#chatContent').val();
			$.ajax({
				type: "POST",
				url: "chatSubmitServlet",
				data: {
					chatName: chatName,
					chatContent: chatContent
				},
				success: function(result) {
					if(result == 1) {
						autoClosingAlert('#successMessage',2000);
					}else if(result == 0) {
						autoClosingAlert('#dangerMessage',2000);
					}else {
						autoClosingAlert('#warningMessage',2000);
					}
				}
			});
			$('#chatContent').val('');	
		}
		function autoClosingAlert(selector, delay) {
			var alert = $(selector).alert();
			alert.show();
			window.setTimeout(function() {alert.hide()}, delay);
		}
		function chatListFunction(type) {
			console.log("ChatListFunction");
			$.ajax({
				type: "POST",
				url: "./ChatListServlet", 
				data: {
					listType: type,
				},
				success: function(data) {
					if(data == "") return;
					var parsed = JSON.parse(data);
					var result = parsed.result;	
					for(var i = 0; 1 < result.length; i++) {
						addChat(result[i][0].value, result[i][1].value, result[i][2].value);
						console.log(result[i][0].value);
						console.log(result[i][1].value);
						console.log(result[i][2].value);
						console.log("--------------");
					}
					lastID = Number(parsed.last);
					
				}
			});
		}

		function addChat(chatName, chatContent, chatTime) {
			$('#chatList').append(
			'<div class="row">' +
			'<div class="col-lg-12">' +
			'<div class="media">' +
			'<a href="#" class="pull-left">' +
			'<img class="media-object img-circle" src="images/book.jpg" />' +	// 이미지
			'</a>' +
			'<div class="media-body">' +
			'<h4 class="media-heading">' +
			chatName + 
			'<span class="small pull-right">' +
			chatTime +
			'</span>' +
			'</h4>' +
			'<p>' + 
			chatContent +
			'</p>' +
			'</div>' +
			'</div>' +
			'</div>' +
			'</div>' + 
			'<hr>');
		}
		function getInfiniteChat() {
			setInterval(function() {
				chatListFunction(lastID);
			}, 500);
		}
	</script>
	
	
</head>
<body>

<fieldset>
	<legend><h2>공지사항 </h2></legend>
	<form action="#" method="post" name="notice"></form>
		
		<tr>
		<ul>
			<li><a href="notice1.jsp">1번내용</a><br> </li>
			<li><a href="notice2.jsp">2번내용</a><br> </li>
			<li><a href="notice3.jsp">3번내용</a><br> </li>
		</ul>
		</tr>

</fieldset>

<br>
<br>
<br>




	<div class="container">
		<div class="container bootsrap snippet">
			<div class="row">
				<div class="col-xs-12">
					<div class="portlet portlet-default">
						<div class="portlet-heading">
							<div class="portlet-title">
								<h4>
									<i class="fa fa-circle text-green"></i>실시간 채팅방
								</h4>
							</div>
							<div class="clearfix"></div>
						</div>
						<div id="chat" class="panel-collapse collapse in">
							<div id="chatList" class="portlet-body chat-widget" style="overflow-y: auto; width: auto; height: 500px;"></div>						
							<div class="portlet-footer">
								<div class="row">
									<div class="form-group col-xs-4">
										<input type="text" id="chatName" style="height: 40px;" class="form-control" placeholder="이름" maxlength="8" />
									</div>
								</div>
								<div class="row" style="height: 90px">
									<div class="form-group col-xs-10">
										<textarea id="chatContent" style="height:80px" class="form-control" placeholder="메시지를 입력하세요." maxlength="100"></textarea>
									</div>
									<div class="form-group col-xs-2">
										<button type="button" class="btn btn-default pull-right" onclick="submitFunction();">전송</button>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="alert alert-success" id="successMessage" style="display:none">
				<strong>메시지 전송에 성공했습니다.</strong>
			</div>
			<div class="alert alert-danger" id="dangerMessage" style="display:none">
				<strong>이름과 내용을 모두 입력해주세요.</strong>
			</div>
			<div class="alert alert-warning" id="warningMessage" style="display:none">
				<strong>데이터베이스 오류가 발생했습니다.</strong>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function(){
			chatListFunction('ten');
			getInfiniteChat();
		});
		
		
	</script>
</body>
</html>