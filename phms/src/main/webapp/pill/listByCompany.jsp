<%@	page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.ayak.phms.pill.Medicine" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<form action="companyName.do" method="post">
<% request.setCharacterEncoding("euc-kr"); %>

		<%
		Medicine medi = new Medicine();
		List<Medicine> medi_list = (List<Medicine>)request.getAttribute("mediList");
		%>
	<table border="2">
		<tr>
			<th>업체명</th>
			<th>제품명</th>
			<th>효능</th>
			<th>사용법</th>
			<th>주의사항(복용전)</th>
			<th>주의사항(복용후)</th>
			<th>상호작용</th>
			<th>부작용</th>
			<th>보관법</th>
			<th>제품이미지</th>
		</tr>
		<% for(int i=0; i < medi_list.size(); i++) {  %>
		<tr>
			<td><%=medi_list.get(i).getM_Company() %></td>
			<td><%=medi_list.get(i).getM_DrugName() %></td>
			<td><%=medi_list.get(i).getM_DrugEffect() %></td>
			<td><%=medi_list.get(i).getM_UseDrug() %></td>
			<td><%=medi_list.get(i).getM_BeforeWarn() %></td>
			<td><%=medi_list.get(i).getM_AfterWarn() %></td>
			<td><%=medi_list.get(i).getM_Interaction() %></td>
			<td><%=medi_list.get(i).getM_SideEffect() %></td>
			<td><%=medi_list.get(i).getM_StorageMethod() %></td>
			<td><img src="<%=medi_list.get(i).getM_DrugImage() %>" width=400px/></td>
		</tr>
		<% } %>
		
	</table>
</form>
</body>
</html>