<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 수치</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</head>
<body>
	
	<%
	/* BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0)); */
	int cm = Integer.parseInt(request.getParameter("cm"));
	double kg = Integer.parseInt(request.getParameter("kg"));
	double bmi = kg / ((cm / 100.0) * (cm / 100.0));
	%>
	
	<%!
	public String calculateBmi(int cm, double kg){
		double bmi = kg / ((cm / 100.0) * (cm / 100.0));
		if(bmi < 18.5){
			return "저체중";
		} else if(bmi >= 18.5 && bmi < 25){
			return "정상";
		} else if(bmi >= 25 && bmi < 30){
			return "과체중";
		} else {
			return "비만";
		}
	}
	%>
	<div class="container">
		<h2><b>BMI 측정 결과</b></h2>
		<div class="d-flex display-4">
			<div class="mr-2">당신은</div> 
			<div class="text-info"> <%=calculateBmi(cm, kg) %> </div>
			<div class="ml-2">입니다</div>
		</div>
		<div class="mt-3">
		BMI 수치 : <%=bmi %>
		</div>
	</div>
	
</body>
</html>