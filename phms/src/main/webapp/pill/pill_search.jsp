<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@	page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ayak.phms.pill.Medicine" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약 정보 검색</title>
<link rel="stylesheet" href="./css/main.css" />
</head>
<body>
<!-- Wrapper -->
	<div id="wrapper">
		<!-- Header -->
		<header id="header">
			<h1><a href="/phms/">Ayak</a></h1>
			<nav class="links">
				<ul>
					<li><form action="pilllist.do" method="post">
			<input type="submit" value="약 정보"></form></li>
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
					<input type="text" name="query" placeholder="Search" />
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
					<li><a href="auLogin.html" class="button large fit">로그인</a></li>
				</ul>
			</section>
		</section>

		<!-- Main -->
		<div id="main">
			<!-- Post -->
			<article class="post">
				<section>
					<form class="search" method="post" action="pilllist.do">
					<% request.setCharacterEncoding("euc-kr"); %>

		<%
		Medicine medi = new Medicine();
		List<Medicine> medi_list = (List<Medicine>)request.getAttribute("mediList");
		%>
						<header class="flex_center">
							<form action="../pilllist.do" method="post">
							<select class="title" name="약 검색" aria-label="약 검색" style="width:20%; margin-right: 10px;">
								<option value="약 검색">약 검색</option>
								<option value="C">제조사</option>
								<option value="N">약품명</option>
								<option value="E">효능</option>
							</select>
							<input type="text" name="query" placeholder="enter 누르시오." style="width: 70%; height: 50px; margin-right: 10px" />
							<button class="b" type="submit" style="background: rgba(160, 160, 160, 0.075); border: solid 1px rgba(160, 160, 160, 0.3); float: right;">검색</button>
							</form>
						</header>
					</form>
				</section>
				<table class="main">
				<!--  	<tr>
						<th>업체명</th>
			<th>제품명</th>
			<th>효능</th>
			<th>사용법</th>
			<th>주의사항(복용전)</th>
			<th>주의사항(복용후)</th>
			<th>상호작용</th>
			<th>부작용</th>
			<th>보관법</th>
			<th>제품이미지</th>
					</tr>
					
		<tr>-->
		<% for(int i=0; i < medi_list.size(); i++) {  %>
		<tr>
			<th>번호</th>
			<td><%= i+1 %></td>
		<tr>
		<tr>
			<th>제품이미지</th>
			<td><img src='<%=medi_list.get(i).getM_DrugImage() %>' style="width:100px; height:50px;" onerror="this.style.display='none'"></td>
			</tr>
			<th>업체명</th>
			<td><%=medi_list.get(i).getM_Company() %></td>
		</tr>
		<tr>
			<th>제품명</th>
			<td><%=medi_list.get(i).getM_DrugName() %></td>
		</tr>
		<tr>
			<th>효능</th>
			<td><%=medi_list.get(i).getM_DrugEffect() %></td>
		</tr>
			<tr>
			<th>사용법</th>
			<td><%=medi_list.get(i).getM_UseDrug() %></td>
			</tr>
			<tr>
			<th>주의사항(복용전)</th>
			<td><%=medi_list.get(i).getM_BeforeWarn() %></td>
			</tr>
			<tr>
			<th>주의사항(복용후)</th>
			<td><%=medi_list.get(i).getM_AfterWarn() %></td>
			</tr>
			<tr>
			<th>상호작용</th>
			<td><%=medi_list.get(i).getM_Interaction() %></td>
			</tr>
			<tr>
			<th>부작용</th>
			<td><%=medi_list.get(i).getM_SideEffect() %></td>
			</tr>
			<tr>
			<th>보관법</th>
			<td><%=medi_list.get(i).getM_StorageMethod() %></td>
			</tr>
			
		</tr>
		<% } %>
				</table>
				<div class="paging">
					<ul class="paging" id="pagination">
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">6</a></li>
						<li><a href="#">7</a></li>
						<li><a href="#">8</a></li>
						<li><a href="#">9</a></li>
						<li><a href="#">10</a></li>
					</ul>
				</div>
			</article>
		</div>

		<!-- Footer -->
		<section id="footer">
			<div class="pagination-wrapper clearfix">
				<ul class="pagination float--right" id="pages">
					<ul class="icons">
						<li><span class="label" style="margin-left: 30px; font-size: 25px; color: #5dbde3;">Ayak</span></li>
					</ul>
				</ul>
			</div>
			<p class="copyright">Copyright Ayak Corp. All Rights Reserved.</p>
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