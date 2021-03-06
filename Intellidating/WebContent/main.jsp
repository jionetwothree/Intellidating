<%@page import="com.DAO.memberDAO"%>
<%@page import="com.DTO.bookDTO"%>
<%@page import="com.DAO.bookDAO"%>
<%@page import="com.DTO.clubDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.clubDAO"%>
<%@page import="com.DTO.recommendationDTO"%>
<%@page import="com.DAO.recommendationDAO"%>
<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<link rel="icon" sizes="192x192"
   href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/main2.css">
<!-- 나눔폰트 적용 -->
<link rel="stylesheet" type="text/css"
   href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC:wght@500;600;700;900&display=swap"
   rel="stylesheet">
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
         <div id="wrapper">

            <nav id="navi">
            <h1 id="title"><a href="main.jsp">intellidating</a></h1>
            	<%if(m_dto == null){ %>
            		 <div class="menu" style="width:400px;margin-left:145px; display: inline-block;">
             
                  <div><a href="login.html">로그인/회원가입</a></div>

     
               </div>
         
            	
            	<%}else{ %>
             <ul class="menu" style="display:inline; margin-top:30px;">
               
            
            
                  <li><a href="analysis.jsp">추천받기</a>
                  <li><a href="before_searchBook.jsp">책 검색하기</a></li>
                  <li><a href="myClub.jsp">마이모임</a>
                  <li><a href="logoutService">로그아웃</a></li>
               </ul>
           
            	<%} %>
            
            
              
            </nav>
         </div>
      </header>


      <div id="banner">

         <div id="main_img" style="margin-bottom: 50px;">
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
               
               clubDAO dao = new clubDAO();
               ArrayList<clubDTO> al_club = dao.selectmainclub();
               bookDAO book_dao = new bookDAO();
               ArrayList<bookDTO> al_book = book_dao.selectmainbook();
         %>
         
      <div id="clubs">
         <div class="align">
            <div class="clubtitle">
               <span> 인기있는 모임 </span>
            </div>
         </div>
         <section class="carousel">
            <div class="reel">

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_club.get(0).getClub_image() %>" alt="" /></a>
                  <header>
                     <h3>
                        <a href="#"><%=al_club.get(0).getClub_name() %></a>
                     </h3>
                     <h5><%=al_club.get(0).getClub_detail() %></h5>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_club.get(1).getClub_image() %>" alt="" /></a>
                  <header>
                     <h3>
                        <a href="#"><%=al_club.get(1).getClub_name() %></a>
                     </h3>
                     <h5><%=al_club.get(1).getClub_detail() %></h5>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_club.get(2).getClub_image() %>" alt="" /></a>
                  <header>
                     <h3>
                        <a href="#"><%=al_club.get(2).getClub_name() %></a>
                     </h3>
                     <h5><%=al_club.get(2).getClub_detail() %></h5>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_club.get(3).getClub_image() %>" alt="" /></a>
                  <header>
                     <h3>
                        <a href="#"><%=al_club.get(3).getClub_name() %></a>
                     </h3>
                     <h5><%=al_club.get(3).getClub_detail() %></h5>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_club.get(4).getClub_image() %>" alt="" /></a>
                  <header>
                     <h3>
                        <a href="#"><%=al_club.get(4).getClub_name() %></a>
                     </h3>
                     <h5><%=al_club.get(4).getClub_detail() %></h5>
                  </header>
               </article>
               

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_club.get(5).getClub_image() %>" alt="" /></a>
                  <header>
                     <h3>
                        <a href="#"><%=al_club.get(5).getClub_name() %></a>
                     </h3>
                     <h5><%=al_club.get(5).getClub_detail() %></h5>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_club.get(6).getClub_image() %>" alt="" /></a>
                  <header>
                     <h3>
                        <a href="#"><%=al_club.get(6).getClub_name() %></a>
                     </h3>
                     <h5><%=al_club.get(6).getClub_detail() %></h5>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_club.get(7).getClub_image() %>" alt="" /></a>
                  <header>
                     <h3>
                        <a href="#"><%=al_club.get(7).getClub_name() %></a>
                     </h3>
                     <h5><%=al_club.get(7).getClub_detail() %></h5>
                  </header>
               </article>
            </div>
         </section>

      </div>

      <div id="clubs">
         <div class="clubtitle">
            <span> 인기있는 책 </span>
         </div>
         <section class="carousel">
            <div class="reel">

               <article>
                  <a href="#" class="image featured" height='30'><img
                     src="<%=al_book.get(0).getBook_image() %>" alt="" /></a>
                  <header>
                     <h4 align="center">
                        <a href="#"><%=al_book.get(0).getBook_name() %></a>
                     </h4>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_book.get(1).getBook_image() %>" alt="" /></a>
                  <header>
                     <h4 align="center">
                        <a href="#"><%=al_book.get(1).getBook_name() %></a>
                     </h4>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_book.get(2).getBook_image() %>" alt="" /></a>
                  <header>
                     <h4 align="center">
                        <a href="#"><%=al_book.get(2).getBook_name() %></a>
                     </h4>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_book.get(3).getBook_image() %>" alt="" /></a>
                  <header>
                     <h4 align="center">
                        <a href="#"><%=al_book.get(3).getBook_name() %></a>
                     </h4>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_book.get(4).getBook_image() %>" alt="" /></a>
                  <header>
                     <h4 align="center">
                        <a href="#"><%=al_book.get(4).getBook_name() %></a>
                     </h4>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_book.get(5).getBook_image() %>" alt="" /></a>
                  <header>
                     <h4 align="center">
                        <a href="#"><%=al_book.get(5).getBook_name() %></a>
                     </h4>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_book.get(6).getBook_image() %>" alt="" /></a>
                  <header>
                     <h4 align="center">
                        <a href="#"><%=al_book.get(6).getBook_name() %></a>
                     </h4>
                  </header>
               </article>

               <article>
                  <a href="#" class="image featured"><img
                     src="<%=al_book.get(7).getBook_image() %>" alt="" /></a>
                  <header>
                     <h4 align="center">
                        <a href="#"><%=al_book.get(7).getBook_name() %></a>
                     </h4>
                  </header>
               </article>

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
                  memberDAO mem_dao = new memberDAO();
                  memberDTO mem_dto = mem_dao.selectMember(m_dto.getNum());

            %>




      <div class="explain">
         <span><span
            style="font-weight: 700; margin-right: 5px 0px 0px 0px"><%=m_dto.getNickname()%></span>
            님의 취향은 #<%=al_book.get(0).getBook_category1() %> #<%=al_book.get(1).getBook_category2() %>
            #<%=al_book.get(2).getBook_category3() %>(이)군요! </span><br>
      </div>


      <div id="clubs">
         <div class="clubtitle">
            <span> 취향에 맞는 모임 </span>
         </div>
      </div>

      <section class="carousel">
         <div class="tasty">
            <article class="taste">
               <a href="javascript:openWindowPop1('bookpop.jsp?name=<%=al_club.get(0).getClub_name() %>&detail=<%=al_club.get(0).getClub_detail() %>', 'popup');" class="image featured"><img
                  src="<%=al_club.get(0).getClub_image() %>" alt="" /></a>
               <header height='50' width='175'>
                  <h3>
                     <a href="javascript:openWindowPop1('bookpop.jsp?name=<%=al_club.get(0).getClub_name() %>&detail=<%=al_club.get(0).getClub_detail() %>', 'popup');"><%=al_club.get(0).getClub_name() %></a>
                  </h3>
                  <% if(mem_dto.getMem_club1()!=al_club.get(0).getClub_num()){ %>
                  <form action="joinClub">
                     <input type="hidden" name="clubnum" value="<%=al_club.get(0).getClub_num() %>">
                     <input type="submit" value="가입하기">
                  </form>
                  <%}else{%>
                  <input type="button" value="가입완료">
                  <% } %>
               </header>
            </article>

            <article class="taste">
               <a href="javascript:openWindowPop2('bookpop.jsp?name=<%=al_club.get(1).getClub_name() %>&detail=<%=al_club.get(1).getClub_detail() %>', 'popup');" class="image featured"><img
                  src="<%=al_club.get(1).getClub_image() %>" alt="" /></a>
               <header height='50' width='175'>
                  <h3>
                     <a href="javascript:openWindowPop2('bookpop.jsp?name=<%=al_club.get(1).getClub_name() %>&detail=<%=al_club.get(1).getClub_detail() %>', 'popup');"><%=al_club.get(1).getClub_name() %></a>
                  </h3>
                  <% if(mem_dto.getMem_club1()!=al_club.get(1).getClub_num()){ %>
                  <form action="joinClub">
                     <input type="hidden" name="clubnum" value="<%=al_club.get(1).getClub_num() %>">
                     <input type="submit" value="가입하기">
                  </form>
                  <%}else{%>
                  <input type="button" value="가입완료">
                  <% } %>
               </header>
            </article>

            <article class="taste">
               <a href="javascript:openWindowPop3('bookpop.jsp?name=<%=al_club.get(2).getClub_name() %>&detail=<%=al_club.get(2).getClub_detail() %>', 'popup');" class="image featured"><img
                  src="<%=al_club.get(2).getClub_image() %>" alt="" /></a>
               <header height='50' width='175'>
                  <h3>
                     <a href="javascript:openWindowPop3('bookpop.jsp?name=<%=al_club.get(2).getClub_name() %>&detail=<%=al_club.get(2).getClub_detail() %>', 'popup');"><%=al_club.get(2).getClub_name() %></a>
                  </h3>
                  <% if(mem_dto.getMem_club1()!=al_club.get(2).getClub_num()){ %>
                  <form action="joinClub">
                     <input type="hidden" name="clubnum" value="<%=al_club.get(2).getClub_num() %>">
                     <input type="submit" value="가입하기">
                  </form>
                  <%}else{%>
                  <input type="button" value="가입완료">
                  <% } %>
               </header>
            </article>

         </div>
      </section>

      <div id="clubs">
         <div class="clubtitle">
            <span> 취향에 맞는 책 </span>
         </div>
      </div>

      <section class="carousel">
         <div class="tasty">
            <article class="taste">
               <a href="bookInfo.jsp?book=<%= al_book.get(0).getBook_num()%>" class="image featured"><img
                  src="<%=al_book.get(0).getBook_image() %>" height='330'
                  width='175' alt="" /></a>
               <header height='50' width='175'>
                  <h4 align="center">
                     <a href="bookInfo.jsp?book=<%= al_book.get(0).getBook_num()%>"><%=al_book.get(0).getBook_name() %></a>
                  </h4>
               </header>
            </article>

            <article class="taste">
               <a href="bookInfo.jsp?book=<%= al_book.get(1).getBook_num()%>" class="image featured"><img
                  src="<%=al_book.get(1).getBook_image() %>" height='330'
                  width='175' alt="" /></a>
               <header height='50' width='175'>
                  <h4 align="center">
                     <a href="bookInfo.jsp?book=<%= al_book.get(1).getBook_num()%>"><%=al_book.get(1).getBook_name() %></a>
                  </h4>
               </header>
            </article>

            <article class="taste">
               <a href="bookInfo.jsp?book=<%=al_book.get(2).getBook_num()%>" class="image featured"><img
                  src="<%=al_book.get(2).getBook_image() %>" height='330'
                  width='175' alt="" /></a>
               <header height='50' width='175'>
                  <h4 align="center">
                     <a href="bookInfo.jsp?book=<%= al_book.get(2).getBook_num()%>"><%=al_book.get(2).getBook_name() %></a>
                  </h4>
               </header>
            </article>
         </div>
      </section>


      <%
            }
      %>
   </div>


   <div id="foot">
      <div class="all">
         <span> <a href="question.html">자주 묻는 질문</a>
         </span> <span> <a href="#">문의하기</a>
         </span> <span> <a href="#">블로그</a></span> <span class="company"> <br>
            <br> <br> 주식회사 인텔리데이팅 <br> <br> <br>
         </span>
      </div>
   </div>



   <script>
   function openWindowPop1(url, name){
       var options = 'top=450, left=430, width=300, height=200, scrollbars=no, location=no, status=no, menubar=no, toolbars=no, resizable=no';
       window.open(url, name, options);
   }
   function openWindowPop2(url, name){
       var options = 'top=450, left=760, width=300, height=200, scrollbars=no, location=no, status=no, menubar=no, toolbars=no, resizable=no';
       window.open(url, name, options);
   }
   function openWindowPop3(url, name){
       var options = 'top=450, left=1100, width=300, height=200, scrollbars=no, location=no, status=no, menubar=no, toolbars=no, resizable=no';
       window.open(url, name, options);
   }
     
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