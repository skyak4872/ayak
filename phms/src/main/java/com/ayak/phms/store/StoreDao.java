package com.ayak.phms.store;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class StoreDao {
	private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/ayak?serverTimezone=Asia/Seoul";
	private static final String JDBC_USER = "root";
	private static final String JDBC_PASSWORD = "admin";
	
	public StoreDao() {
		try {
			Class.forName(JDBC_DRIVER); //JDBC 드라이버 로딩
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public void add_Store(Store store) {
		String sql = "INSERT INTO Store(S_Name, S_Addr, S_Tel, Mon_Time, Tue_Time, Wed_Time, Thu_Time, Fri_Time, Sat_Time, Sun_Time, holi_Time, Lon, Lat)"
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			Connection con = null;
			PreparedStatement pstmt = null;
			try {
				con = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, store.getS_Name());
				pstmt.setString(2, store.getS_Addr());
				pstmt.setString(3, store.getS_Tel());
				pstmt.setString(4, store.getTime_Mon());
				pstmt.setString(5, store.getTime_Tue());
				pstmt.setString(6, store.getTime_Wed());
				pstmt.setString(7, store.getTime_Thu());
				pstmt.setString(8, store.getTime_Fri());
				pstmt.setString(9, store.getTime_Sat());
				pstmt.setString(10, store.getTime_Sun());
				pstmt.setString(11, store.getTime_holi());
				pstmt.setString(12, store.getLon());
				pstmt.setString(13, store.getLat());
				pstmt.executeUpdate();
				
				System.out.println("INSERTED.......");
			}finally {
				pstmt.close();
				con.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}	
}