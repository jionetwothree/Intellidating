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
<<<<<<< HEAD
<link rel="stylesheet" type="text/css" href="css/main.css">
<style>
	background-color: white;
	
	
	.carousel {
		overflow-x: auto;
	}


	body.homepage.is-preload #header:after {
		opacity: 0;
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

=======
>>>>>>> branch 'master' of https://github.com/jionetwothree/Intellidating.git
</head>
<body>
	<%
		memberDTO m_dto = (memberDTO) session.getAttribute("member");
	%>
	<header>
<<<<<<< HEAD
		<div id="title">

			<span>
				<a href="main.jsp">���ڸ�������</a>
			</span>

=======
		<div>
			<p>
			<h2><a href="main.jsp">���ڸ�������</a></h2>
			</p>
>>>>>>> branch 'master' of https://github.com/jionetwothree/Intellidating.git
		</div>
	</header>
	<nav>
		<div>
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
			<hr />
		</div>
	</nav>
<<<<<<< HEAD

	<div id="banner"><img src="images/bg.jpg">
		<%
			if (m_dto == null) {
		%>
		<a href="login.html">���ڸ������� �����ϱ�</a>
		<%
			} else {
		%>
		<a href="rule.html">���ڸ������� �̿��Ģ</a>
		<%
			}
		%>
=======
	<div>
		<h1>
			<a href="#">���ڸ������� �̿��Ģ</a>
		</h1>
		<hr />
>>>>>>> branch 'master' of https://github.com/jionetwothree/Intellidating.git
	</div>
<<<<<<< HEAD
	
	
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
=======

	<div>
		<section>
			<h2>
				<%
					if (m_dto == null) {
				%>
				<h1>�α����� ���ּ���</h1>
				<%
					} else {
				%>
				<h1><%=m_dto.getNickname()%></h1>
				���� ������ #�Ҽ� #�θǽ� #�ֽ�����(��)����!
				<%} %>
			</h2>
		</section>
	</div>

	<div>
		<section>
		<%
					if (m_dto == null) {
>>>>>>> branch 'master' of https://github.com/jionetwothree/Intellidating.git
				%>
<<<<<<< HEAD
				
		<p><%=m_dto.getNickname()%>
				���� ������ #�Ҽ� #�θǽ� #�ֽ�����(��)����!
		</p>
		
		<div id="clubs">
			<div class="clubtopic">
				<span>
					���⿡ �´� ����
				</span>
=======
			<p>
			<h3><!-- �α��ִ� ���� --></h3>
			</p>
			<p>
				<a href="#">��ü����</a>
			</p>
		</section>
		<section>
			<div>
				<h3>
					<a href="intellipage.jsp">���� ����1</a>
				</h3>
>>>>>>> branch 'master' of https://github.com/jionetwothree/Intellidating.git
			</div>
<<<<<<< HEAD
			<div class="all">
				<span>
					<a href="#">��ü����</a>
				</span>
=======

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����2</a>
				</h3>
			</div> 

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����3</a>
				</h3>
>>>>>>> branch 'master' of https://github.com/jionetwothree/Intellidating.git
			</div>
<<<<<<< HEAD
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
=======

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����4</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����5</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����6</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����7</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����8</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.html">���� ����9</a>
				</h3>
			</div>
		</section>
	</div>

	<div>
		<section>
			<p>
			<h3><!-- �α��ִ� å --></h3>
			</p>
			<p>
				<a href="#">��ü����</a>
			</p>
		</section>
		<section>
			<div>
				<h3>
					<a href="intellipage.jsp">���� ����1</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����2</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����3</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����4</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����5</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����6</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����7</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����8</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.html">���� ����9</a>
				</h3>
			</div>
		</section>
	</div>
	<%} else { %>
	<p>
			<h3><!-- ���⿡ �´� ���� --></h3>
			</p>
			<p>
				<a href="#">��ü����</a>
			</p>
		</section>
		<section>
			<div>
				<h3>
					<a href="intellipage.jsp">���� ����1</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����2</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����3</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����4</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����5</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����6</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����7</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����8</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.html">���� ����9</a>
				</h3>
			</div>
		</section>
	</div>

	<div>
		<section>
			<p>
			<h3><!-- ���⿡ �´� å --></h3>
			</p>
			<p>
				<a href="#">��ü����</a>
			</p>
		</section>
		<section>
			<div>
				<h3>
					<a href="intellipage.jsp">���� ����1</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����2</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����3</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����4</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����5</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����6</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����7</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����8</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.html">���� ����9</a>
				</h3>
			</div>
		</section>
	</div>
	<% } %>
	<footer>
		<div>
			<p>
				<a href="#">���� ���� ����</a>
			</p>
			<p>
				<a href="#">�����ϱ�</a>
			</p>
			<p>
				<a href="#">��α�</a>
			</p>
			<br> <br> <br>
			<p>�ֽ�ȸ�� ���ڸ�������</p>
		</div>
	</footer>




>>>>>>> branch 'master' of https://github.com/jionetwothree/Intellidating.git
</body>
</html>