<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberShip Find User Id</title>
<link type="text/css" rel="stylesheet" href="./css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
</head>
<body>
	<form action="finduserpw" method="POST">
  <div class="wrap">
       <div class="login">
           <h2>비밀번호 찾기</h2>
           <p>입력하신 내용을 다시 확인해주세요.</p>
           <div class="login_id">
               <h4>아이디</h4>
               <input type="text" name="userId" placeholder="아이디를 입력해주세요."/><br>
           </div>
           <div class="login_pw">
               <h4>휴대전화</h4>
               <input type="tel" placeholder="ex) 010-0000-0000" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" maxlength="13" name="userphone"/><br>
           </div>
           <div class="login_etc"style="justify-content: space-between;">
               <div class="checkbox">
                 <a href="auLogin.jsp" style="margin-left: 15px;">로그인</a>
               </div>
               <div class="forgot_pw">
                 <a href="auFinduserId.jsp" style="margin-right: 15px;">아이디 찾기</a>
           </div>
           </div>
           <div class="submit">
             <input type="submit" value="다음" style="cursor: pointer;">
           </div>
       </div>
   </div>
	</form>
</body>
</html>