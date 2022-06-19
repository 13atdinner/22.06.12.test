package com.koreait.web.servlet.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/regit")	// /*는 모든 요청을 인코딩 처리해준다
// 전체 적용을 했을 때 문제가 생기면 공통요청을 만들어서 처리한다 
// ex) .do	-> do는 단순히 이름이다(아무 이름이나 지으면 됨)
public class CharacterEncodingFilter implements Filter{

	@Override
	public void doFilter(ServletRequest arg0, 
			ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {

		arg0.setCharacterEncoding("UTF-8");				
		arg1.setCharacterEncoding("UTF-8");				
		arg1.setContentType("text/html charset=UTF-8");			
		
//		System.out.println("before filter");
		arg2.doFilter(arg0, arg1);	// filterChain으로 다음 작업 진행 여부를 정한다
//		System.out.println("after filter");
	}

	@Override
	public void destroy() {
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}
	
}
