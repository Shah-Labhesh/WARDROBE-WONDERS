package controller.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter({"/cart","/profile","/addCart","/AdminProfile"})
public class LoginFilter implements Filter {
  public void init(FilterConfig filterConfig) throws ServletException {
  }

  public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
     HttpSession session = ((HttpServletRequest)req).getSession();
     if (session.getAttribute("loggedInId") == null) {
        session.setAttribute("loginError", "Do login First!");
        RequestDispatcher rd = req.getRequestDispatcher("/SignIn");
		rd.forward(req, resp);
     } else {
        chain.doFilter(req, resp);
     }

  }

  public void destroy() {
  }
}
