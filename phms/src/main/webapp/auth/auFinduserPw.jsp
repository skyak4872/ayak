<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberShip Find User Pw</title>
<link type="text/css" rel="stylesheet" href="./css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
</head>
<body>
	<form action="msLogin" method="POST">
  <div class="wrap">
       <div class="login">
           <h2>비밀번호 찾기</h2>
           <div class="login_id">
               <h4>ID</h4>
               <input type="text" name="userName" placeholder="아이디 입력"/><br>
           </div>
           <div class="login_pw">
               <h4>휴대전화</h4>
              <input type="text" name="userPhone" placeholder="010-0000-0000"/><br>
           </div>
           <div class="login_etc" style="justify-content: space-between;">
               <div class="checkbox">
                <a href="msLogin.jsp" style="margin-left: 15px;">로그인</a>
               </div>
               <div class="forgot_pw">
                 <a href="msFinduserId.jsp" style="margin-right: 15px;">아이디 찾기</a>
            </div>
           </div>
           <div class="submit">
             <a href="msFounduserPw.jsp"><input type="submit" value="다음" style="cursor: pointer;"></a>
           </div>
       </div>
   </div>
	</form>
</body>
</html>