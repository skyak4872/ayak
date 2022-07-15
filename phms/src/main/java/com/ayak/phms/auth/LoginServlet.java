package com.ayak.phms.auth;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ayak.phms.membership.User;
import com.ayak.phms.membership.UserDao;

@WebServlet("/auth/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPassWd = request.getParameter("userPassWd");
		
		User user = new User();
		user.setUserId(userId);
		user.setUserPassWd(userPassWd);

		UserDao userDao = new UserDao();
		int result = userDao.login(userId,userPassWd);
		
		if(result == 2) {
			request.getRequestDispatcher("auError.jsp").forward(request, response); //다시 로그인 페이지로 보낸다.
			return;
		}else if(result == -1) {
			request.getRequestDispatcher("auError.jsp").forward(request, response); //다시 로그인 페이지로 보낸다.
			return;
		}
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		RequestDispatcher dispatcher = null;
		
		request.setAttribute("user", user);
		dispatcher = request.getRequestDispatcher("auSuccess.jsp");
		dispatcher.forward(request, response);
		
	}

}
