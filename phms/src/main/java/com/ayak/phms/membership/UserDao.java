package com.ayak.phms.membership;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UserDao {
	private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/jv250?serverTimezone=Asia/Seoul";
	private static final String JDBC_USER = "jv250";
	private static final String JDBC_PASSWORD = "jv250";
	
	  public UserDao() {
			try {
				Class.forName(JDBC_DRIVER);
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
	  }
	  }
	  
	  public void addUser(User user) {
		  String sql = "INSERT INTO User (userId, userPassWd, userName, dateOfBirth, userGender, userEmail, userphone)"
		  		+ "VALUES (?,?,?,?,?,?,?)";
		  try {
			  Connection con = null;
				PreparedStatement pstmt = null;
		 try {
			  con = DriverManager.getConnection(JDBC_URL,JDBC_USER,JDBC_PASSWORD);
			  pstmt = con.prepareStatement(sql);				
			  pstmt.setString(1, user.getUserId());
			  pstmt.setString(2, user.getUserPassWd());
			  pstmt.setString(3, user.getUserName());
			  pstmt.setString(4, user.getDateOfBirth());
			  pstmt.setString(5, user.getUserGender());
			  pstmt.setString(6, user.getUserEmail());
			  pstmt.setString(7, user.getUserphone());
			  pstmt.executeUpdate();
			  pstmt.close();
			  con.close();
		  }finally {
			  pstmt.close();
			  con.close();
		  }
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
	 }	  
	  
}
