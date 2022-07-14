<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberShip Found User Id</title>
<link type="text/css" rel="stylesheet" href="./css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
</head>
<body>
		<form action="msLogin" method="POST">
  <div class="wrap">
       <div class="login">
           <h2>아이디 찾기</h2>
           <div class="login_id">
               <h4>고객님의 정보와 일치하는 아이디 목록입니다.</h4>
               <input type="text" name="userName" /><br>
           </div>
           <div class="login_pw">
               <h4></h4>
           </div>
           <div class="login_etc"style="justify-content: space-between;">
               <div class="checkbox">
                 <a href="msLogin.jsp" style="margin-left: 15px;">로그인</a>
               </div>
               <div class="forgot_pw">
                 <a href="msFinduserPw.jsp" style="margin-right: 15px;">비밀번호 찾기</a>
           </div>
           </div>
           <div class="submit">
           <input type="submit" value="Ayak 로그인 하러가기" style="cursor: pointer;"><a href="msLogin.jsp"></a>
           </div>
       </div>
   </div>
	</form>
</body>
</html>