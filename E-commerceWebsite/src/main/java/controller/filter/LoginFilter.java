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
  
  // init method from Filter interface, not used here
  public void init(FilterConfig filterConfig) throws ServletException {
  }

  // doFilter method from Filter interface, which will be called every time
  // the servlet container (e.g. Tomcat) receives a request that matches the
  // filter's URL pattern
  public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
    // Get the session from the HttpServletRequest object
    HttpSession session = ((HttpServletRequest)req).getSession();
    // Check if the "loggedInId" attribute exists in the session
    if (session.getAttribute("loggedInId") == null) {
      // If the user is not logged in, set a "loginError" attribute in the session
      session.setAttribute("loginError", "Do login First!");
      // Forward the request to the "/SignIn" URL using a RequestDispatcher object
      RequestDispatcher rd = req.getRequestDispatcher("/SignIn");
      rd.forward(req, resp);
    } else {
      // If the user is logged in, let the request continue to its original destination
      chain.doFilter(req, resp);
    }
  }

  // destroy method from Filter interface, not used here
  public void destroy() {
  }
}
