<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberShip Login</title>
  <link type="text/css" rel="stylesheet" href="./css/style.css?ver=1">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
</head>
<body>
  	<form action="login" method="POST">
  <div class="wrap">
       <div class="login">
           <h2>로그인</h2>
           <div class="login_id">
               <h4>UserID</h4>
               <input type="text" name="userId" placeholder="5~20자의 영문 소문자, 숫자와 사용 가능합니다." minlength="5" maxlength="20" pattern="^[a-zA-Z0-9]+$"/><br>
           </div>
           <div class="login_pw">
               <h4>Password</h4>
               <input type="password" name="userPassWd" placeholder="8~16자 영문 대 소문자,숫자 를 사용하세요." minlength="8" maxlength="16" pattern="^[a-zA-Z0-9]+$"/><br>
           </div>
           <div class="login_etc">
               <a href="/phms/membership/msSignUp.jsp">회원가입</a>
               <div class="checkbox">
                 <a href="msFinduserId.jsp" style="margin-left: 40px;" >아이디 찾기</a>
               </div>
               <div class="forgot_pw">
                 <a href="msFinduserPw.jsp" style="margin-left: 40px;">비밀번호 찾기</a>
           </div>
           </div>
           <div class="submit">
             <input type="submit" value="로그인" style="cursor: pointer;">
             <p class="main"><a href="../index.jsp">메인페이지</a></p>
           </div>
       </div>
   </div>
	</form>
</body>
</html>
