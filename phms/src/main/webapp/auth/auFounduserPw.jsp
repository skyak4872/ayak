<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MemberShip Found User Pw</title>
<link type="text/css" rel="stylesheet" href="./css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
</head>
<body>
	<form action="msLogin" method="POST">
  <div class="wrap">
       <div class="login">
           <h2>��й�ȣ ã��</h2>
           <div class="login_id">
               <h4>������ ��й�ȣ�� �缳�� ���ּ���.</h4>
               <input type="text" name="userName" placeholder="8~16�� ���� �� �ҹ���,���� �� ����ϼ���."/><br>
           </div>
           <div class="login_pw">
               <h4>��Ȯ�� ��й�ȣ�� �Է��ϼ���</h4>
              <input type="text" name="userName" placeholder="8~16�� ���� �� �ҹ���,���� �� ����ϼ���."/><br>
           </div>
           <div class="login_etc"style="justify-content: space-between;">
               <div class="checkbox">
                 <a href="msLogin.jsp" style="margin-left: 15px;">�α���</a>
               </div>
               <div class="forgot_pw">
                 <a href="msFinduserPw.jsp" style="margin-right: 15px;">���̵� ã��</a>
           </div>
           </div>
           <div class="submit">
           <input type="submit" value="Ayak �α��� �Ϸ�����" style="cursor: pointer;"><a href="msLogin.jsp"></a>
           </div>
       </div>
   </div>
	</form>
</body>
</html>