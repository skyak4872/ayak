 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String userId = request.getParameter("userId");
    HttpSession log = request.getSession(false);
	String Id = (String)log.getAttribute("userId");
	if(Id == null ) {
		request.getRequestDispatcher("index.jsp").forward(request, response);
		return;
	}
    %>
    <!DOCTYPE html>
    <html lang="ko" dir="ltr">
      <head>
        <title>Ayak</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1. minimum-scale=1 user-scalable=no">
        <link rel="stylesheet" href="./css/main.css"/>
      </head>
      <body>
       <!-- Wrapper -->
			<div id="wrapper">
				<!-- Header -->
<header id="header">
						<h1><a href="#">Ayak</a></h1>
						<nav class="links">
							<ul>
								<li>
								<form action="pilllist.do" method="post">
									<input type="submit" value="약 정보">
								</form></li>
								<li><a href="#">약국검색</a></li>
								<li><a href="#">다이어리</a></li>
								<li><a href="#">게시판</a></li>
							</ul>
						</nav>
						<nav class="main">
							<ul>
								<li class="search">
									<a class="fa-search" href="#search">Search</a>
									<form id="search" method="get" action="#">
										<input type="text" name="query" placeholder="약 검색" />
									</form>
								</li>
								<li class="menu">
									<a class="fa-bars" href="#menu">Menu</a>
								</li>
							</ul>
						</nav>
					</header>

				<!-- Menu -->
					<section id="menu">
						<!-- Search -->
							<section>
								<form class="search" method="get" action="#">
									<input type="text" name="query" placeholder="검색"/>
								</form>
							</section>

						<!-- Links -->
							<section>
								<ul class="links">
									<li>
										<a href="#">
											<h3>마이페이지</h3>
											<p>개인정보 수정/변경</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>약 빠르게 찾기</h3>
											<p>정확한 약 정보</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>다이어리</h3>
											<p>정확한 알람</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>게시물</h3>
											<p>내가 쓴 게시글</p>
										</a>
									</li>
								</ul>
							</section>
						<!-- Actions -->
							<section>
																<ul class="actions stacked">
								                  <% String id = (String)session.getAttribute("userId"); %>
                  <a class="nav-link" href="#"><%= id %>님</a>
									<li><a href="./auth/logout" class="button large fit">로그아웃</a></li>
								</ul>
							</section>
					</section>
				<!-- Main -->
					<div id="main">

						<!-- Post -->
							<article class="post">
								<header>
									<div class="title">
										<h2><a href="single.html" style="font-size: 30px;">My page</a></h2>
										<p>샬라샬라</p>
									</div>
									<div class="meta">
										<time class="published" datetime="2015-11-01">2022 07월 19일</time>
									</div>
								</header>
								<a href="single.html" class="image featured"><img src="./images/Iknow.png" alt="" /></a>
								<p style="font-weight: bold;">약은 맛없어 먹지마세요</p>
								<footer>
									<ul class="actions">
										<li><a href="single.html" class="button large" style="font-size: 14px;">바로가기</a></li>
									</ul>
									<ul class="stats">
										<li><a href="#" style="font-size: 15px; font-weight: bold;">좋아요</a></li>
										<li><a href="#" class="icon solid fa-heart" style="font-size: 15px; font-weight: bold;">28</a></li>
										<li><a href="#" class="icon solid fa-comment" style="font-size: 15px; font-weight: bold;">128</a></li>
									</ul>
								</footer>
							</article>

						<!-- Post -->
							<article class="post">
								<header>
									<div class="title">
										<h2><a href="single.html"style="font-size: 30px;">정확하고 빠른 약 정보 검색</a></h2>
										<p>샬라샬라</p>
									</div>
									<div class="meta">
										<time class="published" datetime="2015-10-25">2022 07월 15일</time>
									</div>
								</header>
								<a href="single.html" class="image featured"><img src="./images/Iknow2.jpg" alt="" /></a>
								<p style="font-weight: bold;">약은 맛없어 먹지마세요</p>
								<footer>
									<ul class="actions">
										<li><a href="single.html" class="button large" style="font-size: 14px;">바로가기</a></li>
									</ul>
									<ul class="stats">
										<li><a href="#" style="font-size: 15px; font-weight: bold;">좋아요</a></li>
										<li><a href="#" class="icon solid fa-heart" style="font-size: 15px; font-weight: bold;">28</a></li>
										<li><a href="#" class="icon solid fa-comment"  style="font-size: 15px; font-weight: bold;">128</a></li>
									</ul>
								</footer>
								<section id="footer" style="text-align: center; margin-top: 10px;">
									<ul class="icons">
										<li><span class="label" style="margin-left: 30px; font-size: 25px; color: #5dbde3;">Ayak</span></li>
									</ul>
									<p class="copyright">Copyright Ayak Corp. All Rights Reserved.</p>
								</section>
							</article>
					</div>
				<!-- Sidebar -->
					<section id="sidebar">
						<!-- Mini Posts -->
							<section>
								<div class="mini-posts">
									<!-- Mini Post -->
										<article class="mini-post">
											<header>
											<h3><a href="single.html" style="font-weight: bold; font-size: 15px;  color:#5dbde7;">간편한 처방 관리 현명한 약관리!</a></h3>
											</header>
											<a href="single.html" class="image"><img src="images/blueprint.jpg" alt="" /></a>
										</article>
								</div>
							</section>
						<!-- Posts List -->
														<section>
								<ul class="posts">
									<li>
										<article>
											<header>
												<h3><a href="single.html" style="font-weight: bold; font-size: 13px;">hi</a></h3>
												<time class="published" datetime="2015-10-20" style=" font-weight: bold;">2022년 07월 19일</time>
											</header>
											<a href="single.html" class="image"><img src="images/ms3.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="single.html" style="font-weight: bold; font-size: 13px;">hi</a></h3>
												<time class="published" datetime="2015-10-15" style=" font-weight: bold;">2022년 07월 19일</time>
											</header>
											<a href="single.html" class="image"><img src="images/ms4.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="single.html" style="font-weight: bold;">Hey Hey You Go girl</a></h3>
												<time class="published" datetime="2015-10-10" style=" font-weight: bold;">2022년 07월 19일</time>
											</header>
											<a href="single.html" class="image"><img src="images/ms5.jpg" alt="" /></a>
										</article>
									</li>
								</ul>
							</section>
						<!-- About -->
								<section class="blurb">
								<h2>Pill About</h2>
								<p>You got this big jacket on It's got a pocket for your halo, I Can never tell you that you're wrong We're in the East like a sunrise You got this big jacket on It's got a pocket for your halo, I Can never tell you that you're wrong We're in the East like a sun My days have been better off with you by my side</p>
								<ul class="actions">
									<li><a href="#" class="button" style="font-size: 10px;">더 많은 정보</a></li>
								</ul>
							</section>
					</section>
			</div>
		<!-- Scripts -->
			<script src="./js/jquery.min.js"></script>
			<script src="./js/browser.min.js"></script>
			<script src="./js/breakpoints.min.js"></script>
			<script src="./js/util.js"></script>
			<script src="./js/main.js"></script>
			
      </body>
    </html>
