<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="../pilllist.do" method="post">
	<div>
		<input type="text" value="" placeholder="약품명칭">
		<button type="submit">검색하기</button>
	</div>
</form>
<form action="../pilllist.do" method="post">
	<div>
		<input type="text" value="" placeholder="제약회사명">	
		<button type="submit">검색하기</button>
	</div>
</form>
<form action="../pilllist.do" method="post">
	<div>
		<input type="text" value="" placeholder="효능으로 검색">	
		<button type="submit">검색하기</button>
	</div>
</form>
<form action="../pilllist.do" method="post">
	<input type="submit">목록 열기</input>
</form>
</body>
</html>