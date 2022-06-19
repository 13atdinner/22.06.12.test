package com.koreait.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")	// 이전 시간에 web.xml에 여러 줄 작성해서 서블릿 연결했던 것을, 이렇게 간편하게 쓸 수 있다
public class MyServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
			throws ServletException, IOException {
		
		arg1.setCharacterEncoding("UTF-8");				// 한글이 나타나게 Response를 인코딩
		arg1.setContentType("text/html charset=UTF-8");	// 한글이 깨지지않게 Response내용의 type을 설정
		
		String paramCnt = arg0.getParameter("cnt");
		System.out.println("paramCnt : "+paramCnt);
		
		int cnt = 0;
		
		if(paramCnt != null && !paramCnt.equals("")) {
			cnt = Integer.parseInt(paramCnt);
		}else {
			cnt = 100;
		}

//		arg0.getParameter("cnt");								// 특정 key값을 통해 Request로 들어온 value값 반환
//		int cnt = Integer.parseInt(arg0.getParameter("cnt"));	// 브라우저에서 넘어오는건 전부 문자 타입이므로 맞는 타입으로 바꿔줘야 한다
		System.out.println("cnt : "+cnt);
		
		PrintWriter out = arg1.getWriter();
		out.println("안녕 Servlet Annotation~~~");
	}
	
}
