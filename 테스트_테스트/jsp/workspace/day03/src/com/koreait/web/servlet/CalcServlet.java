package com.koreait.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
		
//		[내풀이] : 마이너스만서블릿만 만들고 기존 플러스서블릿(Addservlet)과 연동 시키면 될줄 알았음 
//		String x = arg0.getParameter("x");
//		String y = arg0.getParameter("y");
//		
//		int i = 0;
//		int j = 0;
//		int result = 0;
//		
//		if(x != null && !x.equals("")) {
//			if(y != null && !y.equals("")) {
//				i = Integer.parseInt(x);
//				j = Integer.parseInt(y);
//				result = i-j;
//			}
//		}
//		PrintWriter out = arg1.getWriter();
//		out.println("result is : "+result);
		
//		[강사님] : clac2 프론트단에 name=operator를 추가해서 로직에 활용
		String xStr = arg0.getParameter("x");
		String yStr = arg0.getParameter("y");
		String op = arg0.getParameter("operator");
		
		int x = 0;
		int y = 0;
		int result = 0;
		
		if(xStr != null && !xStr.equals("")) {
			x = Integer.parseInt(xStr);
		}
		if(yStr != null && !yStr.equals("")) {
			y = Integer.parseInt(yStr);
		}
//		name값을 활용하여 덧셈과 뺄셈 로직을 추가로 구현
		if(op.equals("덧셈")) {
			result = x+y;
		}else {
			result = x-y;
		}
		
		arg1.getWriter().println("result is : "+result);		
	}
	
}
