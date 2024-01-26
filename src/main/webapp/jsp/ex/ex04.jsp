<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
 --%>
 
 <%@ page import="java.util.*" %> <%-- 권장하지는 않는 방법.. --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자료구조 활용</title>
</head>
<body>

	<% 
		// 과일 이름 리스트
		List<String> fruitList = new ArrayList<>();
		fruitList.add("사과");
		fruitList.add("바나나");
		fruitList.add("딸기");
		
		String fruitString = "";
		for(int i = 0; i < fruitList.size(); i++){
			fruitString += fruitList.get(i);
		}
		
	%>
	
	<h4><%= fruitString %></h4>
	
	<table border="1">
		<% for(String fruit : fruitList){ %>
		<tr>
			<td><%= fruit %></td>
		</tr>
		<% }%>
		
	</table>
	
</body>
</html>