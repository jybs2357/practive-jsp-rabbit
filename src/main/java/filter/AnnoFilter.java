package filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

@WebFilter(filterName = "AnnoFilter", urlPatterns = "/15FilterListener")
public class AnnoFilter implements Filter {

	public void init(FilterConfig filterConfig) throws ServletException {

	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String searchField = request.getParameter("serchField");
		String searchWord = request.getParameter("searchWord");
		System.out.println("검색 필드 : " + searchField);
		System.out.println("검색어 : " + searchWord);
		chain.doFilter(request, response);
	}
	
	public void destroy() {

	}
}
