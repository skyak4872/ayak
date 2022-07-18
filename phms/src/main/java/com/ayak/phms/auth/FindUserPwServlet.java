package com.ayak.phms.auth;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ayak.phms.membership.UserDao;

@WebServlet("/auth/finduserpw")
public class FindUserPwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("userId");
		String phone = request.getParameter("userPhone");
		
		
		UserDao userDao = new UserDao();
		int result = userDao.findUserPw(id, phone);
		
		if(result == 2) {
			request.getRequestDispatcher("auErrorPw.jsp").forward(request, response); //다시 로그인 페이지로 보낸다.
			return;
		}else if(result == -1) {
			request.getRequestDispatcher("auErrorPw.jsp").forward(request, response); //다시 로그인 페이지로 보낸다.
			return;
		}	
		
		RequestDispatcher dispatcher = null;
		
		request.setAttribute("id", id);
		dispatcher = request.getRequestDispatcher("auFounduserPw.jsp");
		dispatcher.forward(request, response);
	}

}
