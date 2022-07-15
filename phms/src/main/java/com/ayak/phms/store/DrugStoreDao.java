package com.ayak.phms.store;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DrugStoreDao {
	private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/ayakDB?serverTimezone=Asia/Seoul";
	private static final String JDBC_USER = "ayak";
	private static final String JDBC_PASSWORD = "ayak";
	
	public DrugStoreDao() {
		try {
			Class.forName(JDBC_DRIVER); //JDBC 드라이버 로딩
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public void add_Pill(DrugStore medi) {
		String sql = "INSERT INTO Medicine(M_Company, M_DrugName, M_DrugEffect, M_useDrug, M_BeforeWarn, M_AfterWarn, M_Interaction, M_SideEffect, M_StorageMethod, M_DrugImage)"
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			Connection con = null;
			PreparedStatement pstmt = null;
			try {
				con = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, medi.getM_Company());
				pstmt.setString(2, medi.getM_DrugName());
				pstmt.setString(3, medi.getM_DrugEffect());
				pstmt.setString(4, medi.getM_UseDrug());
				pstmt.setString(5, medi.getM_BeforeWarn());
				pstmt.setString(6, medi.getM_AfterWarn());
				pstmt.setString(7, medi.getM_Interaction());
				pstmt.setString(8, medi.getM_SideEffect());
				pstmt.setString(9, medi.getM_StorageMethod());
				pstmt.setString(10, medi.getM_DrugImage());
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
	
//	public List<Medicine> Alllist(){
//		String sql = "SELECT * FROM Medicine";
//		List<Medicine> medi_list = new ArrayList<Medicine>();
//		
//		try {
//			Connection con = null;
//			PreparedStatement pstmt = null;
//			ResultSet rs = null;
//			try {
//				con =  DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
//				pstmt = con.prepareStatement(sql);
//				rs = pstmt.executeQuery();
//				while(rs.next()) {
//					Medicine medi = new Medicine();
//					medi.setM_Company(rs.getString("M_Company"));
//					medi.setM_DrugName(rs.getString("M_DrugName"));
//					medi.setM_DrugEffect(rs.getString("M_DrugEffect"));
//					medi.setM_UseDrug(rs.getString("M_UseDrug"));
//					medi.setM_BeforeWarn(rs.getString("M_BeforeWarn"));
//					medi.setM_AfterWarn(rs.getString("M_AfterWarn"));
//				}
//			}
//		}
//		return medi_list;
//	}
	
	
}
