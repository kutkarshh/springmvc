package springmvc.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class MyInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("preHandle method is invoked");

		String name = request.getParameter("name");

		if (name == null || name.trim().isEmpty()) {
			request.getSession().setAttribute("error", "Name can not be null");
			response.sendRedirect(request.getContextPath() + "/inter/home");
			System.out.println("Name is Null");
			return false;
		} else if (name.equals("Utkarsh Kumar")) {
			adminPrivilegesResponse(response);
			return false;
		}

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

		System.out.println("This is Post Handler Method...");

		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

		System.out.println("This is After Completion Method...");

		super.afterCompletion(request, response, handler, ex);
	}

	private void adminPrivilegesResponse(HttpServletResponse response) throws Exception {
		response.setContentType("text/html");
		response.getWriter()
				.println("<div class=\"intro\">\r\n" + "			<h1 class=\"display-3\">Welcome Utkarsh</h1>\r\n"
						+ "			<p class=\"lead\">You have Admin Privileges, enjoy your time working here</p>\r\n"
						+ "		</div>");
	}
}