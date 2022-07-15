package com.ayak.phms.auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ayak.phms.membership.UserDao;

@WebServlet("/auth/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void init() {
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPassWd = request.getParameter("userPassWd");		

		UserDao userDao = new UserDao();
		int result = userDao.login(userId,userPassWd);
		
		if(result == 2) {
			request.getRequestDispatcher("auError.jsp").forward(request, response); //다시 로그인 페이지로 보낸다.
			return;
		}else if(result == -1) {
			request.getRequestDispatcher("auError.jsp").forward(request, response); //다시 로그인 페이지로 보낸다.
			return;
		}		
		
		//다른 사용자와 구분되는 페이지를만들기위해 아래 코드를 사용
		HttpSession session = request.getSession(true); 
		session.setAttribute("userId", userId);
		response.sendRedirect("../indexLogin.jsp");
		
//		RequestDispatcher dispatcher = null;
//		
//		request.setAttribute("user", user);
//		dispatcher = request.getRequestDispatcher("auSuccess.jsp");
//		dispatcher.forward(request, response);
		
	}

}
