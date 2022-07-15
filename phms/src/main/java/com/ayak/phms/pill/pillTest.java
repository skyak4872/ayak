package com.ayak.phms.pill;

import java.util.List;

public class pillTest {
	public static void main(String[] args) {
		System.out.println("약정보");
		
		MedicineDao medi_dao = new MedicineDao();
		
		List<Medicine> medi_list = medi_dao.All_listByDrugName("까스활명수");
		
		for(Medicine medi : medi_list) {
			System.out.println("업체명 : "+medi.getM_Company());
			System.out.println("약이름 : "+medi.getM_DrugName());
			System.out.println(" 효능 : " + medi.getM_DrugEffect());
			System.out.println("사욥법 : " + medi.getM_UseDrug());
			System.out.println("주의사항(복용전) : " + medi.getM_BeforeWarn());
			System.out.println("주의사항(복용후) : " + medi.getM_AfterWarn());
			System.out.println("상호작용 : " + medi.getM_Interaction());
			System.out.println("부작용 : " + medi.getM_SideEffect());
			System.out.println("보관법 : " + medi.getM_StorageMethod());
			System.out.println("약 이미지 : " + medi.getM_DrugImage());
		}
	}
}
