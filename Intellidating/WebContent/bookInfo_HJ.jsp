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
<title>å ���� ������</title>
</head>
<body>
<%
	 memberDTO dto = (memberDTO)session.getAttribute("member");
%>

	<!-- å ���� -->

		<img alt="å �̹���" src="images/ant.jpg">
		<div>
			<!-- å���� -->
			<h2 class="bookName">����</h2>
			
			<!-- ����, ���ǻ�, ������ -->
			<ul class="infoTop">
				<!-- ���� -->
				<li>
					<h4>����</h4>
					<em class="divi">|</em>
					<h4>�������� ��������</h4>
				</li>
				
				<!-- ���ǻ� -->
				<li>
					<h4>���ǻ�</h4>
					<em class="divi">|</em>
					<h4>����å��</h4>
				</li>
				
				<!-- ������ -->
				<li>
					<h4>������</h4>
					<em class="divi">|</em>
					<h4>2001�� 02�� 15��</h4>
				</li>
			</ul>
			
			<!-- å�з� -->			<ul class="infoBtm">
					<span>�Ҽ�</span>
					<span class="brkt">></span>
					<span>�������Ҽ�</span>
					<span class="brkt">></span>
					<span>�������Ҽ��Ϲ�</span>
				</li>
			</ul>
		</div>
	</div>
	
	<!-- ��� ��� -->
	<div class="comment_list">
		<div class="cmtInfoBox">
				<!-- å�� ���� �ڸ�Ʈ -->
				<div class="cmt_cont">
					<span class="txt">å ���� ����־��!!</span>
				</div>
				<!-- ��¥ �� �ۼ��� -->
				<div class="cmt_etc">
					<span class="cmt_date">2021�� 6�� 12��</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">������ ����</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- å�� ���� �ڸ�Ʈ -->
				<div class="cmt_cont">
					<span class="txt">å ���� ����־��!!</span>
				</div>
				<!-- ��¥ �� �ۼ��� -->
				<div class="cmt_etc">
					<span class="cmt_date">2021�� 6�� 12��</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">������ ����</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- å�� ���� �ڸ�Ʈ -->
				<div class="cmt_cont">
					<span class="txt">å ���� ����־��!!</span>
				</div>
				<!-- ��¥ �� �ۼ��� -->
				<div class="cmt_etc">
					<span class="cmt_date">2021�� 6�� 12��</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">������ ����</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- å�� ���� �ڸ�Ʈ -->
				<div class="cmt_cont">
					<span class="txt">å ���� ����־��!!</span>
				</div>
				<!-- ��¥ �� �ۼ��� -->
				<div class="cmt_etc">
					<span class="cmt_date">2021�� 6�� 12��</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">������ ����</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- å�� ���� �ڸ�Ʈ -->
				<div class="cmt_cont">
					<span class="txt">å ���� ����־��!!</span>
				</div>
				<!-- ��¥ �� �ۼ��� -->
				<div class="cmt_etc">
					<span class="cmt_date">2021�� 6�� 12��</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">������ ����</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- å�� ���� �ڸ�Ʈ -->
				<div class="cmt_cont">
					<span class="txt">å ���� ����־��!!</span>
				</div>
				<!-- ��¥ �� �ۼ��� -->
				<div class="cmt_etc">
					<span class="cmt_date">2021�� 6�� 12��</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">������ ����</span>
				</div>
		</div>
		<div class="cmtInfoBox">
				<!-- å�� ���� �ڸ�Ʈ -->
				<div class="cmt_cont">
					<span class="txt">å ���� ����־��!!</span>
				</div>
				<!-- ��¥ �� �ۼ��� -->
				<div class="cmt_etc">
					<span class="cmt_date">2021�� 6�� 12��</span>
					<span class="divi">|</span>
					<span class="cmt_wtr">������ ����</span>
				</div>
		</div>  
	<!-- å ��� �ۼ� -->
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
					<textarea name="sendCmt" id="cmt" rows="60" cols="30" placeholder="����� �ۼ��Ϸ��� �α����� �ϼž� �մϴ�."></textarea>
				</div>
				<div>
					<input type="submit" value="���"></div>
				</div>
		</div>
	</form>
</body>
</html>