package com.ayak.phms.store;

import java.io.File;
import java.io.IOException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class DrugStoreData 
{ 
    public static void main(String[] args) throws ParserConfigurationException, SAXException 
    { 
        try {
            File file = new File("src/main/webapp/xml/getDrugStore.xml");
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            DocumentBuilder db = dbf.newDocumentBuilder();
            Document document = db.parse(file);
            document.getDocumentElement().normalize();
            System.out.println("Root Element :" + document.getDocumentElement().getNodeName());
            NodeList nList = document.getElementsByTagName("item");
            int leng = nList.getLength();
            String[] addr = new String[leng];  //약국 주소
            String[] name = new String[leng];  //약국 이름
            String[] tel = new String[leng];  //약국 전화번호
            String[] mon_timec = new String[leng];  //월요일 영업 끝
            String[] mon_times = new String[leng];  //월요일 영업 시작
            String[] tue_timec = new String[leng];  //화요일 영업 끝
            String[] tue_times = new String[leng];  //화요일 영업 시작
            String[] wed_timec = new String[leng];  //수요일 영업 끝
            String[] wed_times = new String[leng];  //수요일 영업 시작
            String[] thu_timec = new String[leng];  //목요일 영업 끝
            String[] thu_times = new String[leng];  //목요일 영업 시작
            String[] fri_timec = new String[leng];  //금요일 영업 끝
            String[] fri_times = new String[leng];  //금요일 영업 시작
            String[] sat_timec = new String[leng];  //토요일 영업 끝
            String[] sat_times = new String[leng];  //토요일 영업 시작
            String[] sun_timec = new String[leng];  //일요일 영업 끝
            String[] sun_times = new String[leng];  //일요일 영업 시작
            String[] holi_timec = new String[leng]; //공휴일 영업 끝
            String[] holi_times = new String[leng]; //공휴일 영업 시작
            String[] lon = new String[leng]; // 경도
            String[] lat = new String[leng]; // 위도
//            String[] 
            System.out.println("----------------------------");
            for (int temp = 0; temp < nList.getLength(); temp++) {
                Node nNode = nList.item(temp);
                System.out.println("\nCurrent Element :" + nNode.getNodeName());
                if (nNode.getNodeType() == Node.ELEMENT_NODE) {
                    Element eElement = (Element) nNode;
                    addr[temp] = eElement.getElementsByTagName("dutyAddr").item(0).getTextContent();
                    name[temp] = eElement.getElementsByTagName("dutyName").item(0).getTextContent();
                    tel[temp] = eElement.getElementsByTagName("dutyTel1").item(0).getTextContent();
                    mon_times[temp] = eElement.getElementsByTagName("dutyTime1s").item(0).getTextContent();
                    mon_timec[temp] = eElement.getElementsByTagName("dutyTime1c").item(0).getTextContent();
                    tue_times[temp] = eElement.getElementsByTagName("dutyTime2s").item(0).getTextContent();
                    tue_timec[temp] = eElement.getElementsByTagName("dutyTime2c").item(0).getTextContent();
                    wed_times[temp] = eElement.getElementsByTagName("dutyTime3s").item(0).getTextContent();
                    wed_timec[temp] = eElement.getElementsByTagName("dutyTime3c").item(0).getTextContent();
                    thu_times[temp] = eElement.getElementsByTagName("dutyTime4s").item(0).getTextContent();
                    thu_timec[temp] = eElement.getElementsByTagName("dutyTime4c").item(0).getTextContent();
                    fri_times[temp] = eElement.getElementsByTagName("dutyTime5s").item(0).getTextContent();
                    fri_timec[temp] = eElement.getElementsByTagName("dutyTime5c").item(0).getTextContent();
                    sat_times[temp] = eElement.getElementsByTagName("dutyTime6s").item(0).getTextContent();
                    sat_timec[temp] = eElement.getElementsByTagName("dutyTime6c").item(0).getTextContent();
                    sun_times[temp] = eElement.getElementsByTagName("dutyTime7s").item(0).getTextContent();
                    sun_timec[temp] = eElement.getElementsByTagName("dutyTime7c").item(0).getTextContent();
                    holi_times[temp] = eElement.getElementsByTagName("dutyTime8s").item(0).getTextContent();
                    holi_timec[temp] = eElement.getElementsByTagName("dutyTime8c").item(0).getTextContent();
                    lon[temp] = eElement.getElementsByTagName("wgs84Lat").item(0).getTextContent();
                    lat[temp] = eElement.getElementsByTagName("wgs84Lon").item(0).getTextContent();
                    System.out.println("약국 주소 : " + addr[temp]);
                    System.out.println("약국 이름 : " + name[temp]);
                    System.out.println("월요일 영업 시작 : " + mon_times[temp] + ", 영업 끝 : " + mon_timec[temp]);
                    System.out.println("화요일 영업 시작 : " + tue_times[temp] + ", 영업 끝 : " + tue_timec[temp]);
                    System.out.println("수요일 영업 시작 : " + wed_times[temp] + ", 영업 끝 : " + wed_timec[temp]);
                    System.out.println("목요일 영업 시작 : " + thu_times[temp] + ", 영업 끝 : " + thu_timec[temp]);
                    System.out.println("금요일 영업 시작 : " + fri_times[temp] + ", 영업 끝 : " + fri_timec[temp]);
                    System.out.println("경도 : " + lon[temp] + ", 위도 " + lat[temp]);
                }
            }
            Store s = new Store();
            StoreDao S_Dao = new StoreDao();
            for(int i = 0; i < leng; i++) {
            	s.setS_Addr(addr[i]);
            	s.setS_Name(name[i]);
            	s.setS_Tel(tel[i]);
            	s.setTime_Mon(mon_times[i] + " ~ " + mon_timec[i]);
            	s.setTime_Tue(tue_times[i] + " ~ " + tue_timec[i]);
            	s.setTime_Wed(mon_times[i] + " ~ " + wed_timec[i]);
            	s.setTime_Thu(thu_times[i] + " ~ " + thu_timec[i]);
            	s.setTime_Fri(fri_times[i] + " ~ " + fri_timec[i]);
            	s.setTime_Sat(sat_times[i] + " ~ " + sat_timec[i]);
            	s.setTime_Sun(sun_times[i] + " ~ " + sun_timec[i]);
            	s.setTime_holi(holi_times[i] + " ~ " + holi_timec[i]);
            	s.setLon(lon[i]);
            	s.setLat(lat[i]);
            	S_Dao.add_Store(s);
            }
        }
        catch(IOException e) {
            System.out.println(e);
        } 
    }
}