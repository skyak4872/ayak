package com.ayak.phms.membership;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/membership/adduser")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { //form태그의 method를 post로 할시 doPost로 받는다.
		response.setContentType("text/html;charset=UTF-8"); //출력값을 한글로 받겠다.
		request.setCharacterEncoding("UTF-8"); //POST요청 방식의 한글 처리
		PrintWriter out = response.getWriter(); //타입이 printWriter 의 변수 out이라는 이름의 출력스트림을 생성 여기에 response.getWriter()메서드가 반환한 출력 스트림을 대입
		
		String userId = request.getParameter("userId"); //클라이언트가 요청한(from에 입력한)데이터를 가져와서 userId라는 변수에 넣는다.
		String userPassWd = request.getParameter("userPassWd");
		String userName = request.getParameter("userName");
		String year = request.getParameter("year");	
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String userGender = request.getParameter("userGender");
		String userEmail = request.getParameter("userEmail");
		String userphone = request.getParameter("userphone");
		
		
		List<String> errorMsgs = new ArrayList<>();
		if(userId == null || userId.length() == 0) {
			request.getRequestDispatcher("/membership/msSignUpError.jsp").forward(request, response);
			errorMsgs.add("ID는 필수입력 정보입니다.<br>");
		}if(userPassWd == null || userPassWd.length() == 0) {
			request.getRequestDispatcher("/membership/msSignUpError.jsp").forward(request, response);
			errorMsgs.add("비밀번호는 필수입력 정보입니다.<br>");
		}if(userName == null || userName.length() == 0) {
			request.getRequestDispatcher("/membership/msSignUpError.jsp").forward(request, response);
			errorMsgs.add("이름은 필수입력 정보입니다.<br>");
		}if(year == null || year.length() == 0) {
			request.getRequestDispatcher("/membership/msSignUpError.jsp").forward(request, response);
			errorMsgs.add("필수입력 정보입니다.<br>");
		}if(month == null || month.length() == 0) {
			request.getRequestDispatcher("/membership/msSignUpError.jsp").forward(request, response);
			errorMsgs.add("필수입력 정보입니다.<br>");
		}if(day == null || day.length() == 0) {
			request.getRequestDispatcher("/membership/msSignUpError.jsp").forward(request, response);
			errorMsgs.add("필수입력 정보입니다.<br>");
		}if(userGender == null || userGender.length() == 0) {
			request.getRequestDispatcher("/membership/msSignUpError.jsp").forward(request, response);
			errorMsgs.add("필수입력 정보입니다.<br>");
		}if(userEmail == null || userEmail.length() == 0) {
			request.getRequestDispatcher("/membership/msSignUpError.jsp").forward(request, response);
		}if(userphone == null || userphone.length() == 0) {
			request.getRequestDispatcher("/membership/msSignUpError.jsp").forward(request, response);
			errorMsgs.add("필수입력 정보입니다.<br>");
		}										
		
//		out.print("<html><head><title>form parameter check</title></head><body>");
//		out.print("ID : "+ userId + "<br>"); //위에서 받은 데이터를 화면에 출력
//		out.print("passWd : "+ userPassWd + "<br>");
//		out.print("userName : "+ userName + "<br>");
//		out.print("dateOfBirth : "+ year + month + day + "<br>");
//		out.print("userGender : "+ userGender + "<br>");
//		out.print("userEmail : "+ userEmail + "<br>");
//		out.print("userphone : "+ userphone + "<br>");
//		out.print("</body></header></html>");
//		out.close(); //out이라는 이름의 스트림을 닫아준다. 즉 response.getWriter() 메서드를 이용하여 웹브라우저와 서버간의 연결된 출력스트림을 끊어주는 명령문
		
		User user = new User(); //User 클래스를 인스턴스(객체화)
		user.setUserId(userId); //위에서 getParameter메서드로 받은 값을 User클래스의 set메서드에 저장.
		user.setUserPassWd(userPassWd);
		user.setUserName(userName);
		user.setDateOfBirth(year+month+day);
		user.setUserGender(userGender);
		user.setUserEmail(userEmail);
		user.setUserphone(userphone);
		
		UserDao userDao = new UserDao(); //UserDao 클래스를 인스턴스화
		userDao.addUser(user); //UserDao클래스 안에있는 addUser()메서드를 실행 . 인자값으로 User 인스턴스를 넣는다. (UserDao 에서 필요한 User클래스 안에있는 메서드를 가져와 사용한다는 뜻?)
		
		RequestDispatcher dispatcher = null;
		
		request.setAttribute("user", user);
		dispatcher = request.getRequestDispatcher("msSuccess.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
