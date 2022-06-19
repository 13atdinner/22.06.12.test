package com.koreait.web.servlet;

import java.io.IOException;


import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc3")
public class CalcServlet3 extends HttpServlet{

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
			throws ServletException, IOException {
		
		arg0.setCharacterEncoding("UTF-8");				
		arg1.setCharacterEncoding("UTF-8");				
		arg1.setContentType("text/html charset=UTF-8");

		// cookie 배열
		Cookie[] cookies = arg0.getCookies();
		
		PrintWriter out = arg1.getWriter();
		
		String value_ = arg0.getParameter("value");
		String op = arg0.getParameter("operator");
		
		int value = 0;
		
		if( !value_.equals("")) {
			value = Integer.parseInt(value_);
		}
		
		// 계산 (ex : 5+2=? 계산)
		// 이 로직은 맨 마지막에 입력된 값 2개만 수행한다
		
		// op값이 '='일 때 실행
		if( op.equals("=")) {
			// cookie에 저장되어있는 값
			int x = 0;
			int y = value;
			
			// cookie 꺼내기
			for(Cookie c : cookies) {
				if(c.getName().equals("value")) {
					x = Integer.parseInt(c.getValue());
					break;
				}
			}
			
			String operator = "";
			
			for(Cookie c : cookies) {
				if(c.getName().equals("op")) {
					operator = c.getValue();
					break;
				}
			}
			
			int result = 0;
			
			if(operator.equals("+")) {
				result = x+y;
			}else {
				result = x-y;
			}
			
			out.println("result : "+result);
			
		}else {	// op값이 '+' 또는 '-' 면, session에 저장 
			// cookie는 문자열 형태만 담을 수 있다
			Cookie valueCookie = new Cookie("value", String.valueOf(value));
			Cookie opCookie = new Cookie("op", op);
			
			// 사용자에게 cookie가 전달된다
			arg1.addCookie(valueCookie);
			arg1.addCookie(opCookie);
			
			arg1.sendRedirect("calc3.html");
		}

	}
	
}
