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
               <h4 class="findinfo">������ ������ ��ġ�ϴ� ��й�ȣ�� �Ʒ��� �����ϴ�.</h4>
               <%@ page import="com.ayak.phms.membership.UserDao" %>
               <% UserDao userDao = new UserDao();
       		String Id = request.getParameter("userId");
    		String phone = request.getParameter("userPhone");
    		userDao.findUserPw(Id, phone); 
               %>
               <h4 class="find"><%= userDao.getFindUserPw() %></h4>
           </div>
  			   <div class="login_etc"style="justify-content: space-between;">
               <div class="checkbox">
                 <a href="auLogin.jsp" style="margin-left: 15px;">�α���</a>
               </div>
               <div class="forgot_pw">
                 <a href="auFinduserId.jsp" style="margin-right: 15px;">���̵� ã��</a>
           </div>
           </div>
           <div class="submit">
           <a class="submit findLogin" href="auLogin.jsp">�α��� �Ϸ�����</a>
           <p class="main"><a href="../index.jsp">����������</a></p>
           </div>
       </div>
   </div>
	</form>
</body>
</html>