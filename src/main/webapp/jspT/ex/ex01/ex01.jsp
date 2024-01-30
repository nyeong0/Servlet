<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일기장</title>
</head>
<body>

	<h2>일기장</h2>
	<%--현재 날짜 시간 정보 --%>
	<%-- 정적 방식으로 표현(자바코드를 갖고오기) --%>
	<%@ include file ="date.jsp" %>
	<%=dateString%>
	<%-- <%=dateString%> 정적 방식에서는 변수 값 가져올 수 있음 --%>
	
	<%--동적 방식으로 표현(jsp결과를 갖고오기) --%>
	<%-- <jsp:include page="date.jsp"> --%>
	<%-- <%=dateString%> 에러 발생함 (정적 방식과의 차이점)  --%>
	
	<hr>
	
	<div>
		오늘 너무 추운 날이다. 너무 힘들었다. 그래도 오늘도 해냈다 고생했어!!
	</div>

</body>
</html>