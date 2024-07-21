package springmvc.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class RedirectController {

	// Method 1st using HttpServletResponse keyword
	@RequestMapping("/one")
	public void oneRedirect(HttpServletResponse response) {
		System.out.println("one page redirect");
		try {
			response.sendRedirect("two");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// Method 2nd using redirect keyword
	@RequestMapping("/two")
	public String oneRedirect() {
		System.out.println("second page redirect");
		return "redirect:/three";
	}

	// Method 3nd using RedirectView Object to redirect pages
	@RequestMapping("/three")
	public RedirectView twoRedirect() {
		System.out.println("third page redirect");
		RedirectView view = new RedirectView();
		view.setUrl("contact");
		return view;
	}

}
