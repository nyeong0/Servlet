<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이변환</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	
	<%
	int length = Integer.parseInt(request.getParameter("length"));
	
	// 변환할 단위들 : inch, yard, feet, meter
	String[] options = request.getParameterValues("option");
	
	
	String resultString = "";
	
	for(int i = 0; i < options.length; i++){
		String option = options[i];
		if(option.equals("inch")){
			double inch = length * 0.39;
			resultString += inch + "in<br>";
			
		}else if(option.equals("yard")){
			double yard = length * 0.010936133;
			resultString += yard + "yd<br>";
			
		}else if(option.equals("feet")){
			double feet = length * 0.032808399;
			resultString += feet + "ft<br>";
			
		}else if(option.equals("meter")){
			double meter = length / 100;
			resultString += meter + "m<br>";
			
		}
	}
		
	%>
	
	<div class="container">
		<h2>변환 결과</h2>
		<h2><%= length%>cm</h2>
		<hr>
		<%= resultString%>

	</div>
	
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</body>
</html>