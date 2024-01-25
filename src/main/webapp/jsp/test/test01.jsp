<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
	<%-- 1. 점수들의 평균 구하기 --%>
	<%
	int[] scores = {80, 90, 100, 95, 80};
	
	int sum = 0;
	for(int i = 0; i < scores.length; i++){
		sum += scores[i];
	}
	double average = sum / scores.length;
	%>
	<h2>점수 평균은 <%= average %> 입니다</h2>
	
	<%-- 2. 채점 결과 --%>
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	String A = scoreList.get(0);	
	
	int score = 0;
	for(int i = 0; i < scoreList.size(); i++){
		if(scoreList.get(i).equals("O")){
			score += 10;
		}
	}
	%>
	<h2>채점 결과는 <%=score %>점 입니다.</h2>
	
	<%-- 3. 1부터 n까지의 합계를 구하는 함수 --%>
	<%! 
		public int sum(int number){
			int sum = 0;
			for(int i = 1; i <= number; i++){
				sum += i;
			}
			return sum;
		}
	%>
	<% 
		int result = sum(50);
	%>
	<h2>1에서 50까지의 합은 <%=result %></h2>
	
	<%-- 4. 나이 구하기 --%>
	<% 
		String birthDay = "20010820";
		String year = birthDay.substring(0, 4);
		int birth = Integer.parseInt(year);
		
		int age = 2024 - birth + 1;
	%>
	<h2><%=birthDay %>의 나이는 <%=age %>살 입니다.</h2>
</body>
</html>