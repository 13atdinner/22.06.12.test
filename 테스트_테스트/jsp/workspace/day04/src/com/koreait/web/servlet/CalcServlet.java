package com.koreait.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc")
public class CalcServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
			throws ServletException, IOException {
		
		arg0.setCharacterEncoding("UTF-8");				
		arg1.setCharacterEncoding("UTF-8");				
		arg1.setContentType("text/html charset=UTF-8");

		// Application 저장소 선언
		ServletContext application = arg0.getServletContext();
		
		PrintWriter out = arg1.getWriter();
		
		String value_ = arg0.getParameter("value");
		String op = arg0.getParameter("operator");
		
		int value = 0;
		
		if( !value_.equals("")) {
			value = Integer.parseInt(value_);
		}
		
		// 계산 (ex : 5+2=? 계산)
		// 이 로직은 맨 마지막에 입력된 값 2개만 수행할 수 있다 (ex : 1+2+3+4+5=9(4+5만 연산))
				
		// op값이 '='일 때 실행
		if( op.equals("=")) {
			// application에 저장되어있는 값(ex : 5)
			int x = (Integer)application.getAttribute("value");	// application에 담겨있는 값을 쓰려면 형태를 알아야한다
			// 2번째로 요청보낸 값(ex : 2)								// 이번경우엔 오류문구를 통해 객체형이라는 것을 인지했으므로
			int y = value;										// 데이터 타입으로 쓸 때는 객체 형변환이 필요하다
			// 연산자 
			String operator = (String)application.getAttribute("op");
			
			int result = 0;
			
			if(operator.equals("+")) {
				result = x+y;
			}else {
				result = x-y;
			}
			
			out.println("result : "+result);
			
		}else {	// op값이 '+' 또는 '-' 면, application에 저장 
			application.setAttribute("value", value);
			application.setAttribute("op", op);
		}

	}
	
}
