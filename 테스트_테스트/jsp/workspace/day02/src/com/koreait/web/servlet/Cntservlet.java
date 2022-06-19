package com.koreait.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cnt")
public class Cntservlet extends HttpServlet{
/*
	문제.
	CntServlet을 servlet class로 사용하여
	사용자 url요청	: http:/localhost:9090/cnt?		cnt=5
	화면 출력 내용	: 1 -> 안녕 servlet
				  2 -> 안녕 servlet
				  3 -> 안녕 servlet
				  4 -> 안녕 servlet
				  5 -> 안녕 servlet
				  
	사용자 url요청	: http:/localhost:9090/cnt?		null or ""
	화면 출력 내용	: 1 -> 안녕 servlet
				  ...
				  100 -> 안녕 servlet
*/
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
			throws ServletException, IOException {
		
		arg1.setCharacterEncoding("UTF-8");
		arg1.setContentType("text/html charset=UTF-8");
		
		String paramCnt = arg0.getParameter("cnt");
//		[내풀이]
		int cnt = 0;
		
//		System.out.println("paramCnt : "+paramCnt);	// paramCnt값 확인
//		System.out.println("cnt : "+cnt);			// cnt값 확인
		
		if(paramCnt != null && !paramCnt.equals("")) {
			cnt = Integer.parseInt(paramCnt);
			for(int i=0; i<cnt; i++) {
				PrintWriter out = arg1.getWriter();
				out.println((i+1)+" : 안녕 servlet<br>");
			}
		}else {
			for(int i=0; i<100; i++) {
				PrintWriter out = arg1.getWriter();
				out.println((i+1)+" : 안녕 servlet<br>");
			}
		}
//		[강사님]
//		int cnt = 100;		
//		
//		if(paramCnt != null && !paramCnt.equals("")) {	// if문으로 조건을 충족시키고 for문을 만들면 for문을 2번 돌릴 필요가 없음
//			cnt = Integer.parseInt(paramCnt);
//		}
//
//		PrintWriter out = arg1.getWriter();
//
//		for(int i=0; i<cnt; i++) {
//			out.println((i+1)+" : 안녕 servlet<br>");
//		}
	}
}
