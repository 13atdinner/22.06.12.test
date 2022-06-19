package com.koreait.web.servlet;

import java.io.IOException;


import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/calc2")
public class CalcServlet2 extends HttpServlet{

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
			throws ServletException, IOException {
		
		arg0.setCharacterEncoding("UTF-8");				
		arg1.setCharacterEncoding("UTF-8");				
		arg1.setContentType("text/html charset=UTF-8");

		// session 객체
		HttpSession session = arg0.getSession();
		
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
			// session에 저장되어있는 값(ex : 5)
			int x = (Integer)session.getAttribute("value");	
			// 2번째로 요청보낸 값(ex : 2)							
			int y = value;
			// 연산자 
			String operator = (String)session.getAttribute("op");
			
			int result = 0;
			
			if(operator.equals("+")) {
				result = x+y;
			}else {
				result = x-y;
			}
			
			out.println("result : "+result);
			
		}else {	// op값이 '+' 또는 '-' 면, session에 저장 
			session.setAttribute("value", value);
			session.setAttribute("op", op);
		}

	}
	
}
