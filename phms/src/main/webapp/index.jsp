<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
    <!DOCTYPE html>
    <html lang="ko" dir="ltr">
      <head>
        <title>Ayak</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1. minimum-scale=1 user-scalable=no">
        <link rel="stylesheet" href="./css/main.css"/>
      </head>
      <body>
<<<<<<< HEAD
       <!-- Wrapper -->
			<div id="wrapper">
				<!-- Header -->
					<header id="header">
						<h1><a href="/">Ayak</a></h1>
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
									<li><a href="./auth/auLogin.jsp" class="button large fit">로그인</a></li>
								</ul>
							</section>
					</section>
				<!-- Main -->
					<div id="main">

						<!-- Post -->
							<article class="post">
								<header>
									<div class="title">
										<h2><a href="single.html" style="font-size: 30px;">우리 약은 맛도 좋아요</a></h2>
										<p>샬라샬라</p>
									</div>
									<div class="meta">
										<time class="published" datetime="2015-11-01">2022 07월 15일</time>
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
												<h3><a href="single.html" style="font-weight: bold; font-size: 13px;">이건 약 사진일껄?</a></h3>
												<time class="published" datetime="2015-10-20" style=" font-weight: bold;">2022년 07월 15일</time>
												<a href="#" class="author"><img src="images/pic01.jpg" alt="" /></a>
											</header>
											<a href="single.html" class="image"><img src="./images/pic04.jpg" alt="" /></a>
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
												<time class="published" datetime="2015-10-20" style=" font-weight: bold;">2022년 07월 15일</time>
											</header>
											<a href="single.html" class="image"><img src="./images/pic08.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="single.html" style="font-weight: bold; font-size: 13px;">hi</a></h3>
												<time class="published" datetime="2015-10-15" style=" font-weight: bold;">2022년 07월 15일</time>
											</header>
											<a href="single.html" class="image"><img src="./images/pic09.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="single.html" style="font-weight: bold;">Hey Hey You Go girl</a></h3>
												<time class="published" datetime="2015-10-10" style=" font-weight: bold;">2022년 07월 15일</time>
											</header>
											<a href="single.html" class="image"><img src="./images/pic10.jpg" alt="" /></a>
										</article>
									</li>
								</ul>
							</section>
						<!-- About -->
							<section class="blurb">
								<h2>Pill About</h2>
								<p>글</p>
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
			
=======
        <div id="wrap">
          <!-- alert -->
          <div class="alert alert-primary alert-dismissible fade show" role="alert" style="color:">
            <strong>Ayak</strong><span>&nbsp;&nbsp;‘#알고먹자 #약에대한 모든것 #약검색’</span>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <!-- header -->
          <header id="header">
            <nav class="navbar navbar-expand-lg">
              <a class="navbar-brand" href="#">Ayak</a>
              <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="/phms/auth/auLogin.jsp">로그인</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/phms/membership/msSignUp.jsp">회원가입</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/phms/auth/auLogin.jsp">마이페이지</a>
                  </li>
                </ul>
              </div>
              <form class="form-inline">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
              </form>
            </nav>
          </header>
          <!-- main -->
          <main id="main">
            <div class="swiper mySwiper">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <img src="https://richwood.net/wp-content/uploads/2021/09/main-visual-pharmaceuticals.jpg" alt="">
                  <div class="textbox">
                    <h2>Ayak</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <a href="#">more view</a>
                  </div>
                </div>
              </div>
              <div class="swiper-pagination"></div>
            </div>
            <section id="section1">
            </section>
          </main>
          <footer>
         <div class="inner">
           <div class="fbox">
             <ul>
               <li>이용약관</li>
               <li>개인정보처리방침</li>
               <li>책임의 한계와 법적고지</li>
               <li>회원정보 고객센터</li>
             </ul>
           </div>
           <div class="fbox_bottom">
             <h2>Ayak</h2>
             <div class="copy">Copyright Ayak Corp. All Rights Reserved.</div>
           </div>
         </div>
       </footer>
        </div>
        <!-- bootstrap js code-->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
        <script type="text/javascript">
          $('#myModal').on('shown.bs.modal', function() {
            $('#myInput').trigger('focus')
          })
        </script>
        <!-- Swiper JS -->
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <!-- Initialize Swiper -->
        <script>
          var swiper = new Swiper(".mySwiper", {
            pagination: {
              el: ".swiper-pagination",
              clickable: true,
            },
            keyboard: true,
          });
        </script>
>>>>>>> refs/remotes/origin/main
      </body>
    </html>
