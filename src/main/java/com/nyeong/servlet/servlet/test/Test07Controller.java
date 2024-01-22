package com.nyeong.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String adress = request.getParameter("address");
		String card = request.getParameter("card");
		String stringPrice = request.getParameter("price");
		int price = Integer.parseInt(stringPrice);
		
		if(!adress.contains("서울시")) {
			out.println("배달 불가 지역입니다.");
		} else if(card.equals("신한카드")){
			out.println("결제 불가 카드 입니다.");		
		} else {
			out.println("<html><head><title>배달의 민족</title></head><body>");
			out.println("<h2>" + adress +  "배달 준비중</h2>");
			out.println("<hr>");
			out.println("<div>결제금액 : " + price  + "</div>");
			out.println("</body></html>");
		}
		
		
		
		
		
		
		
		
	}
}
