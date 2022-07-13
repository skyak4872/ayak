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
				Class.forName(JDBC_DRIVER); //JDBC 드라이버 로딩
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
	  }
	  }
	  
	  public void addUser(User user) {
		  String sql = "INSERT INTO User (userId, userPassWd, userName, dateOfBirth, userGender, userEmail, userphone)" //SQL문을 sql이라는 변수에 넣는다.
		  		+ "VALUES (?,?,?,?,?,?,?)";
		  try {
			  Connection con = null;
				PreparedStatement pstmt = null;
		 try {
			  con = DriverManager.getConnection(JDBC_URL,JDBC_USER,JDBC_PASSWORD); //BDMS 접속 
			  pstmt = con.prepareStatement(sql); // 연결된 DB에 SQL문을 실행한 후 결괏값을 가져오는 메서드 Statement와 같은 기능을 수행하지만 가독성과 유지보수가 좋다.
			  pstmt.setString(1, user.getUserId()); //위 SQL문 1번째 인자값으로 user에 저장된 userId값을 가져온다.
			  pstmt.setString(2, user.getUserPassWd());
			  pstmt.setString(3, user.getUserName());
			  pstmt.setString(4, user.getDateOfBirth());
			  pstmt.setString(5, user.getUserGender());
			  pstmt.setString(6, user.getUserEmail());
			  pstmt.setString(7, user.getUserphone());
			  pstmt.executeUpdate(); //데이터베이스에서 데이터를 추가(Insert), 삭제(Delete), 수정(Update)하는 결과 값이 나와 되지않는 SQL 문을 실행합니다. 
			  //만약 DB에 저장되어있는 결과 값을 불러오기 위해서는 executeQuery()메서드를 사용한다. ex)SELECT와 같은 결과값이 필요한 SQL문을 실행할때.
			  
			  pstmt.close(); //자원 해제, DB처리 작업이 완료되면 사용한 객체들을 메모리에서 해제해줘야한다.
			  con.close();
		  }finally { //자원 해제를 두번단 이유는 나도 잘 모르겠다 finally에만 달면 되는거같은데 건들기 무서워서.. 문제가 없어서 내버려둔당
			  pstmt.close();
			  con.close();
		  }
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
	 }	  
	  
}
