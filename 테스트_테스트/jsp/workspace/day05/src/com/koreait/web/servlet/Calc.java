package com.koreait.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calc")
public class Calc extends HttpServlet{

	// ex) 사용자가 처음에 get방식으로 요청했다가 post방식으로 변경했을때 
	// get생성 -> 변경요쳥 -> post생성 -> 공통논리 메서드 생성 -> 필요에 따라 get,post에서 공통 메서드 호출

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		System.out.println("dopost 호출");
		doProcess(req, resp);
		
	}
	
	// 2022.05.30 hjh - 사용자 요청(post로 사용변경)에 의해 사용하지 않게됨 -> 쓰지 않게된 기능들은 해당 기능 위쪽에 히스토리를 적어주어야 함! 중요!
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		System.out.println("doget 호출");
		doProcess(req, resp);
	}
	
	// 공통 메서드로 따로 관리 (논리부분을 적어놓고 필요에 의해 get과 post에서 메서드 호출만 해주는 형식으로 만든다)
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		int num1 = Integer.parseInt(req.getParameter("num1"));
		int num2 = Integer.parseInt(req.getParameter("num2"));
		
		PrintWriter out = resp.getWriter();
		out.println("<html><body>"+(num1+num2)+"</body></html>");	//<html><body>는 안넣어도 출력되지만 형식상으로는 태그를 넣어주는것이 원칙이다
	}
	
	
}
