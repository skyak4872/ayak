package com.ayak.phms.membership;

import java.io.IOException;
import java.io.PrintWriter;

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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>form parameter check</title></head><body>");
		
		String userId = request.getParameter("userId");
		String userPassWd = request.getParameter("userPassWd");
		String userName = request.getParameter("userName");
		String year = request.getParameter("year");	
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String userGender = request.getParameter("userGender");
		String userEmail = request.getParameter("userEmail");
		String userphone = request.getParameter("userphone");
		
		out.print("ID : "+ userId + "<br>");
		out.print("passWd : "+ userPassWd + "<br>");
		out.print("userName : "+ userName + "<br>");
		out.print("dateOfBirth : "+ year + month + day + "<br>");
		out.print("userGender : "+ userGender + "<br>");
		out.print("userEmail : "+ userEmail + "<br>");
		out.print("userphone : "+ userphone + "<br>");
		out.print("</body></header></html>");
		out.close();
		
		User user = new User();
		user.setUserId(userId);
		user.setUserPassWd(userPassWd);
		user.setUserName(userName);
		user.setDateOfBirth(year+month+day);
		user.setUserGender(userGender);
		user.setUserEmail(userEmail);
		user.setUserphone(userphone);
		
		UserDao userDao = new UserDao();
		userDao.addUser(user);
		
	}

}
