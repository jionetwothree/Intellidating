<%@page import="com.DAO.bookDAO"%>
<%@page import="com.DTO.bookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="style_bookInfo_HJ.css">
<title>책 정보 페이지</title>
</head>
<body>
<%
	 memberDTO dto = (memberDTO)session.getAttribute("member");
%>

	<!-- 책 정보 -->

		<img alt="책 이미지" src="images/ant.jpg">
		<div>
			<!-- 책제목 -->
			<h2 class="bookName">개미</h2>
			
			<!-- 저자, 출판사, 출판일 -->
			<ul class="infoTop">
				<!-- 저자 -->
				<li>
					<h4>저자</h4>
					<em class="divi">|</em>
					<h4>베르나르 베르베르</h4>
				</li>
				
				<!-- 출판사 -->
				<li>
					<h4>출판사</h4>
					<em class="divi">|</em>
					<h4>열린책들</h4>
				</li>
				
				<!-- 출판일 -->
				<li>
					<h4>출판일</h4>
					<em class="divi">|</em>
					<h4>2001년 02월 15일</h4>
				</li>
			</ul>
			
			<!-- 책분류 -->			<ul class="infoBtm">
					<span>소설</span>
					<span class="brkt">></span>
					<span>프랑스소설</span>
					<span class="brkt">></span>
					<span>프랑스소설일반</span>
				</li>
			</ul>
		</div>
	</div>
	
	<!-- 댓글 목록 -->
	<div class="comment_list">
		<div class="cmtInfoBox">
				<!-- 책에 대한 코멘트 -->
				<div class="cmt_cont">
					<span class="txt">책 정말 재미있어요!!</span>
				</div>
				<!-- 날짜 및 작성자 -->
				<div class="cmt_etc">
					<span class="cmt_date">2021년 6월 12일</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">현진스 생일</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- 책에 대한 코멘트 -->
				<div class="cmt_cont">
					<span class="txt">책 정말 재미있어요!!</span>
				</div>
				<!-- 날짜 및 작성자 -->
				<div class="cmt_etc">
					<span class="cmt_date">2021년 6월 12일</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">현진스 생일</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- 책에 대한 코멘트 -->
				<div class="cmt_cont">
					<span class="txt">책 정말 재미있어요!!</span>
				</div>
				<!-- 날짜 및 작성자 -->
				<div class="cmt_etc">
					<span class="cmt_date">2021년 6월 12일</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">현진스 생일</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- 책에 대한 코멘트 -->
				<div class="cmt_cont">
					<span class="txt">책 정말 재미있어요!!</span>
				</div>
				<!-- 날짜 및 작성자 -->
				<div class="cmt_etc">
					<span class="cmt_date">2021년 6월 12일</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">현진스 생일</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- 책에 대한 코멘트 -->
				<div class="cmt_cont">
					<span class="txt">책 정말 재미있어요!!</span>
				</div>
				<!-- 날짜 및 작성자 -->
				<div class="cmt_etc">
					<span class="cmt_date">2021년 6월 12일</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">현진스 생일</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- 책에 대한 코멘트 -->
				<div class="cmt_cont">
					<span class="txt">책 정말 재미있어요!!</span>
				</div>
				<!-- 날짜 및 작성자 -->
				<div class="cmt_etc">
					<span class="cmt_date">2021년 6월 12일</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">현진스 생일</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- 책에 대한 코멘트 -->
				<div class="cmt_cont">
					<span class="txt">책 정말 재미있어요!!</span>
				</div>
				<!-- 날짜 및 작성자 -->
				<div class="cmt_etc">
					<span class="cmt_date">2021년 6월 12일</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">현진스 생일</span>
				</div>
		</div>  
	<!-- 책 댓글 작성 -->
	<div id="disqus_thread"></div>
		<script type="text/javascript">
		    /**
		    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
		    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
		    /*
		    var disqus_config = function () {
		    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
		    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
		    };
		    */
		    (function() { // DON'T EDIT BELOW THIS LINE
		    var d = document, s = d.createElement('script');
		    s.src = 'https://web-1-uxzfietzzh.disqus.com/embed.js';
		    s.setAttribute('data-timestamp', +new Date());
		    (d.head || d.body).appendChild(s);
		    })();
		</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
	
	<form action="commentService" method="get">
		<div class="cmtInput">
		        <div>
					<textarea name="sendCmt" id="cmt" rows="60" cols="30" placeholder="댓글을 작성하려면 로그인을 하셔야 합니다."></textarea>
				</div>
				<div>
					<input type="submit" value="등록"></div>
				</div>
		</div>
	</form>
</body>
</html>