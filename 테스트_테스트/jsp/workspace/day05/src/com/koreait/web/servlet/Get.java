package com.koreait.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/get")
public class Get extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
			throws ServletException, IOException {
		
		arg0.setCharacterEncoding("UTF-8");				
		arg1.setCharacterEncoding("UTF-8");				
		arg1.setContentType("text/html charset=UTF-8");
		
		if(arg0.getMethod().equals("GET")) {
			System.out.println("GET 요청입니다");
		}else if(arg0.getMethod().equals("POST")) {
			System.out.println("POST 요청입니다");
		}
		
		super.service(arg0, arg1);
	}
	
	
	// dopost 메서드
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		System.out.println("dopost 메서드가 호출되었습니다");
	}
	
	// doget 메서드
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		System.out.println("doget 메서드가 호출되었습니다");
	}
}
