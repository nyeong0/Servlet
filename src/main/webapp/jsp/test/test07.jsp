<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 민족</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<%
	List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);	
    
    	String menu = request.getParameter("menu");
    	String option = request.getParameter("option");
   
    %>
    
	<div class="container">
		<h1 class="text-center font-weight-bold">검색결과</h1>
<!-- 	<hr>
		<div class="d-flex">
			<div class="font-weight-bold text-center col-4">메뉴</div>
			<div class="font-weight-bold text-center col-4">상호</div>
			<div class="font-weight-bold text-center col-4">별점</div>
		</div> -->
		
		<table class="table text-center">
			<thead>
				<tr>
					<th>메뉴</th>
					<th>상호</th>
					<th>별점</th>
				</tr>
			</thead>
			
			<tbody>
			
			
			<%
					for(Map<String, Object> store:list){
						String storeMenu = (String)store.get("menu"); // 다운캐스팅 . 메뉴가 문자타입으로 명확하기 때문에 String으로 다운캐스팅.

						// 메뉴 조건
						if(storeMenu.equals(menu)){
							double point = (double)store.get("point");
							
							// 가게정보를 tr로 포함시키는 조건
							// option이 null일 때
							// option이 on이고 point가 4.0dltkddls ruddn
							
							if(option == null || (option.equals("on") && point >= 4.0)){
			%>
							<tr>
								<td><%=store.get("menu") %></td>
								<td><%=store.get("name") %></td>
								<td><%=store.get("point")%></td>
							</tr>
		
			<%				}
						}
					}
				
				%>			
			</tbody>
		</table>
	</div>

<%-- <%
     String menu = request.getParameter("menu");
    
    
    for(int i = 0; i < list.size(); i++){
	    String storeName = list.get(i).get("name").toString();
	    String menuName = list.get(i).get("menu").toString(); 
	    String point = list.get(i).get("point").toString();
    
    	if(menu.equals(menuName)){  %>
 --%>
 <%--     		<hr>
    		<div class="d-flex">
    			<div class="text-center col-4"><%= menuName%></div>
    			<div class="text-center col-4"><%= storeName%></div>
    			<div class="text-center col-4"><%= point%></div>
    		</div>
 --%>
<%--     	<% }
    }
	%>
 --%>
	

	
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</body>
</html>