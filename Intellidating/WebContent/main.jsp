<%@page import="com.DTO.clubDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.clubDAO"%>
<%@page import="com.DTO.recommendationDTO"%>
<%@page import="com.DAO.recommendationDAO"%>
<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" sizes="192x192"
	href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/main.css">
<style>
	background-color: white;
	
	
	.carousel {
		overflow-x: auto;
	}


	body.homepage.is-preload #header:after {
		opacity: 0;
	}
	
	#main_img{
		float:left;
		position : relative;
		background-color:#D9E5FF;
		background-size: cover;
		width:100%;
		height:500px;
	}
	

</style>

	<script src="js/jquery.min.js"></script>
			<script src="js/jquery.dropotron.min.js"></script>
			<script src="js/jquery.scrolly.min.js"></script>
			<script src="js/jquery.scrollex.min.js"></script>
			<script src="js/browser.min.js"></script>
			<script src="js/breakpoints.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/main.js"></script>

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
	
	
		<div id="banner">
		
			<div id="main_img">
				<%
					if (m_dto == null) {
				%>
				<a class="main_title" href="login.html">���ڸ������� �����ϱ�</a>
				<%
					} else {
				%>
				<a class="main_title" href="rule.html">���ڸ������� �̿��Ģ</a>
				<%
					}
				%>
			</div>
		</div>

<%-- 	<div id="banner"><img src="images/bg.jpg">
		<%
			if (m_dto == null) {
		%>
		<a class="main_title" href="login.html">���ڸ������� �����ϱ�</a>
		<%
			} else {
		%>
		<a class="main_title" href="rule.html">���ڸ������� �̿��Ģ</a>
		<%
			}
		%>
	</div> --%>
	
	
			<%
				if (m_dto == null) {
			%>
		<div id="clubs">
			<div class="clubtitle">
				<span>
					�α��ִ� ����
				</span>
			</div>
			<div class="all"style= "float:right">
				<span>
					<a href="#">��ü����</a>
				</span>
			</div>
			<section class="carousel">
        <div class="reel">

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

        </div>
    </section>
			
		</div>
		
		<div id="clubs">
			<div  class="clubtitle">
				<span>
					�α��ִ� å
				</span>
			</div>
			<div class="all" style= "float:right">
				<span>
					<a href="#">��ü����</a>
				</span>
			</div>
			<section class="carousel">
        <div class="reel">

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">å�̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">å�̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">å�̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">å�̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">å�̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">å�̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">å�̸�</a></h3>
                </header>
            </article>

        </div>
    </section>

		</div>
			<%
				} else {
			%>
			<%
						recommendationDAO recom_dao = new recommendationDAO();
						recommendationDTO recom_dto = recom_dao.selectrecomclub(m_dto.getNum());
						clubDAO club_dao = new clubDAO();
						ArrayList<clubDTO> al_club = club_dao.selectallclub(recom_dto);
				%>
				
		<p><%=m_dto.getNickname()%>
				���� ������ #�Ҽ� #�θǽ� #�ֽ�����(��)����!
		</p>
		
		<div id="clubs">
			<div class="clubtopic">
				<span>
					���⿡ �´� ����
				</span>
			</div>
			<div class="all">
				<span>
					<a href="#">��ü����</a>
				</span>
			</div>
		</div>
		
		<section class="carousel">
        <div class="reel">

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">�����̸�</a></h3>
                </header>
            </article>

        </div>
    </section>

		<div id="clubs">
			<div class="clubtopic">
				<span>
					���⿡ �´� å
				</span>
			</div>
			<div class="all">
				<span>
					<a href="#">��ü����</a>
				</span>
			</div>
		<section class="carousel">
        <div class="reel">

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">å �̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">å�̸�</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">å�̸�</a></h3>
                </header>
            </article>
       	 </div>
   	 </section>

	</div>
		<%
				}
			%>


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
				<p>�ֽ�ȸ�� ���ڸ�������</p>
				<br> <br> <br> <br> 
			</div>
		</footer>
		
		<script>
		

	(function($) {

		var	$window = $(window),
			$body = $('body'),
			settings = {

					carousels: {
						speed: 4,
						fadeIn: true,
						fadeDelay: 250
					},

			};

			breakpoints({
				wide:      [ '1281px',  '1680px' ],
				normal:    [ '961px',   '1280px' ],
				narrow:    [ '841px',   '960px'  ],
				narrower:  [ '737px',   '840px'  ],
				mobile:    [ null,      '736px'  ]
			});

		// Play initial animations on page load.
			$window.on('load', function() {
				window.setTimeout(function() {
					$body.removeClass('is-preload');
				}, 100);
			});

		// Dropdowns.
			$('#nav > ul').dropotron({
				mode: 'fade',
				speed: 350,
				noOpenerFade: true,
				alignment: 'center'
			});

		// Scrolly.
			$('.scrolly').scrolly();

		// Nav.

			// Button.
				$(
					'<div id="navButton">' +
						'<a href="#navPanel" class="toggle"></a>' +
					'</div>'
				)
					.appendTo($body);

			// Panel.
				$(
					'<div id="navPanel">' +
						'<nav>' +
							$('#nav').navList() +
						'</nav>' +
					'</div>'
				)
					.appendTo($body)
					.panel({
						delay: 500,
						hideOnClick: true,
						hideOnSwipe: true,
						resetScroll: true,
						resetForms: true,
						target: $body,
						visibleClass: 'navPanel-visible'
					});

		// Carousels.
			$('.carousel').each(function() {

				var	$t = $(this),
					$forward = $('<span class="forward"></span>'),
					$backward = $('<span class="backward"></span>'),
					$reel = $t.children('.reel'),
					$items = $reel.children('article');

				var	pos = 0,
					leftLimit,
					rightLimit,
					itemWidth,
					reelWidth,
					timerId;

				// Items.
					if (settings.carousels.fadeIn) {

						$items.addClass('loading');

						$t.scrollex({
							mode: 'middle',
							top: '-20vh',
							bottom: '-20vh',
							enter: function() {

								var	timerId,
									limit = $items.length - Math.ceil($window.width() / itemWidth);

								timerId = window.setInterval(function() {
									var x = $items.filter('.loading'), xf = x.first();

									if (x.length <= limit) {

										window.clearInterval(timerId);
										$items.removeClass('loading');
										return;

									}

									xf.removeClass('loading');

								}, settings.carousels.fadeDelay);

							}
						});

					}

				// Main.
					$t._update = function() {
						pos = 0;
						rightLimit = (-1 * reelWidth) + $window.width();
						leftLimit = 0;
						$t._updatePos();
					};

					$t._updatePos = function() { $reel.css('transform', 'translate(' + pos + 'px, 0)'); };

				// Forward.
					$forward
						.appendTo($t)
						.hide()
						.mouseenter(function(e) {
							timerId = window.setInterval(function() {
								pos -= settings.carousels.speed;

								if (pos <= rightLimit)
								{
									window.clearInterval(timerId);
									pos = rightLimit;
								}

								$t._updatePos();
							}, 10);
						})
						.mouseleave(function(e) {
							window.clearInterval(timerId);
						});

				// Backward.
					$backward
						.appendTo($t)
						.hide()
						.mouseenter(function(e) {
							timerId = window.setInterval(function() {
								pos += settings.carousels.speed;

								if (pos >= leftLimit) {

									window.clearInterval(timerId);
									pos = leftLimit;

								}

								$t._updatePos();
							}, 10);
						})
						.mouseleave(function(e) {
							window.clearInterval(timerId);
						});

				// Init.
					$window.on('load', function() {

						reelWidth = $reel[0].scrollWidth;

						if (browser.mobile) {

							$reel
								.css('overflow-y', 'hidden')
								.css('overflow-x', 'scroll')
								.scrollLeft(0);
							$forward.hide();
							$backward.hide();

						}
						else {

							$reel
								.css('overflow', 'visible')
								.scrollLeft(0);
							$forward.show();
							$backward.show();

						}

						$t._update();

						$window.on('resize', function() {
							reelWidth = $reel[0].scrollWidth;
							$t._update();
						}).trigger('resize');

					});

			});

	})(jQuery);
		
		
		</script>
</body>
</html>