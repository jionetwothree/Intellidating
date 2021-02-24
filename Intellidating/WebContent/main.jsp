<%@page import="com.DTO.bookDTO"%>
<%@page import="com.DAO.bookDAO"%>
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
<link rel="stylesheet" type="text/css" href="css/main2.css">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC:wght@500;600;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="main.css">

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
<div id="layout">
   <%
      memberDTO m_dto = (memberDTO) session.getAttribute("member");
   %>
   <header>
      <div id="title">

         <span>
            <a href="main.jsp">intellidating</a>
         </span>

      </div>
   </header>

	<nav>
		<div id="menu">
			<ul>
				<%
					if (m_dto == null) {
				%>
				<li><a href="login.html">로그인/회원가입</a></li>
				
				<%
					} else {
				%>
				<li><a href="analysis.jsp">추천받기</a>
				<li><a href="before_searchBook.jsp">책 검색하기</a></li>
				<li><a href="mypage.jsp">마이페이지</a>
				<li><a href="logoutService">로그아웃</a></li>
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
				<a class="main_title" href="login.html">인텔리데이팅 시작하기</a>
				<%
					} else {
				%>
				<a class="main_title" href="rule.html">인텔리데이팅 이용규칙</a>
				<%
					}
				%>
			</div>
		</div>	
	
			<%
				if (m_dto == null) {
					
					
			%>
		<div id="clubs">
			<div class="align">
			<div class="clubtitle">
				<span>
					인기있는 모임
				</span>
			</div>
			</div>
		<section class="carousel">
        <div class="reel">

            <article>
                <a href="#" class="image featured"><img  src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">모임이름</a></h3>
                </header>
            </article>


            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">모임이름</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">모임이름</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">모임이름</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">모임이름</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg"  alt="" /></a>
                <header>
                    <h3><a href="#">모임이름</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg"  alt="" /></a>
                <header>
                    <h3><a href="#">모임이름</a></h3>
                </header>
            </article>

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">모임이름</a></h3>
                </header>
            </article>
        </div>
    </section>
         
      </div>
      
      <div id="clubs">
         <div  class="clubtitle">
            <span>
              	 인기있는 책
            </span>
         </div>
         <section class="carousel">
        <div class="reel">

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">책이름</a></h3>
                </header>
            </article >

             <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">책이름</a></h3>
                </header>
            </article >

             <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">책이름</a></h3>
                </header>
            </article >

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">책이름</a></h3>
                </header>
            </article >

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">책이름</a></h3>
                </header>
            </article >

            <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">책이름</a></h3>
                </header>
            </article >
			
			 <article>
                <a href="#" class="image featured"><img src="images/book.jpg" alt="" /></a>
                <header>
                    <h3><a href="#">책이름</a></h3>
                </header>
            </article >

        </div>
    </section>

      </div>
         <%
            } else {
                  recommendationDAO recom_dao = new recommendationDAO();
                  recommendationDTO recom_dto = recom_dao.selectrecomclub(m_dto.getNum());
                  clubDAO club_dao = new clubDAO();

                  ArrayList<clubDTO> al_club = club_dao.selectallclub(recom_dto);
                  bookDAO book_dao = new bookDAO();
                  ArrayList<bookDTO> al_book = book_dao.searchBook(recom_dto);

            %>
            
     

      <div id="clubs">
      <h5><%=m_dto.getNickname()%>
            님의 취향은 #소설 #로맨스 #주식투자(이)군요!
      </h5><br>

         <div class="clubtopic">
            <span>
             	  취향에 맞는 모임
            </span>
         </div>
      </div>
      
      <section class="carousel">

        <div>

            <article>
                <a href="#" class="image featured"><img src="<%=al_club.get(0).getClub_image() %>" height='200' width='400' alt="" /></a>
                <header>
                    <h3><a  href='selectClub?clubnum=<%=al_club.get(0).getClub_num()%>'><%=al_club.get(0).getClub_name() %></a></h3>
                    <h5><%=al_club.get(0).getClub_detail() %></h5>
                </header>
            </article>


            <article>
                <a href="#" class="image featured"><img src="<%=al_club.get(1).getClub_image() %>" height='200' width='400' alt="" /></a>
                <header>
                    <h3><a  href='selectClub?clubnum=<%=al_club.get(1).getClub_num()%>'><%=al_club.get(1).getClub_name() %></a></h3>
                    <h5><%=al_club.get(1).getClub_detail() %></h5>
                </header>
            </article>


            <article>
                <a href="#" class="image featured"><img src="<%=al_club.get(2).getClub_image() %>" height='200' width='400' alt="" /></a>
                <header>
                    <h3><a  href='selectClub?clubnum=<%=al_club.get(2).getClub_num()%>'><%=al_club.get(2).getClub_name() %></a></h3>
                    <h5><%=al_club.get(2).getClub_detail() %></h5>
                </header>
            </article>

        </div>
       
    </section>
    
    
	<div class="afterlogin">
      <div id="clubs">
         <div class="clubtopic">
            <span>
              	 취향에 맞는 책
            </span>
         </div>
      <section class="carousel">
        <div>


            <article>
                <a href="#" class="image featured"><img src="<%=al_book.get(0).getBook_image() %>"  alt="" /></a>
                <header>
                    <h3><a href="#"><%=al_book.get(0).getBook_name() %></a></h3>

                </header>
            </article>


            <article>
                <a href="#" class="image featured"><img src="<%=al_book.get(1).getBook_image() %>"  alt="" /></a>
                <header>
                    <h3><a href="#"><%=al_book.get(1).getBook_name() %></a></h3>
                </header>
            </article>


            <article>
                <a href="#" class="image featured"><img src="<%=al_book.get(2).getBook_image() %>"  alt="" /></a>
                <header>
                    <h3><a href="#"><%=al_book.get(2).getBook_name() %></a></h3>
                </header>
            </article>
           </div>
       </section>

   	</div>
   </div>
      <%
            }
      %>
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
      
      
      
      <script>
      

   (function($) {

      var   $window = $(window),
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

            var   $t = $(this),
               $forward = $('<span class="forward"></span>'),
               $backward = $('<span class="backward"></span>'),
               $reel = $t.children('.reel'),
               $items = $reel.children('article');

            var   pos = 0,
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

                        var   timerId,
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