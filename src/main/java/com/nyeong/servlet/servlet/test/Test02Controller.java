package com.nyeong.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/pain");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();	
		SimpleDateFormat formatter = new SimpleDateFormat("현재시간은 H시 m분 s초 입니다");
		
		String dateString = formatter.format(now);
		
		out.println(dateString);
		out.println("이제되네");
	}

}
