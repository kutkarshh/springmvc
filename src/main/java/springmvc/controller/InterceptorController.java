package springmvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/inter")
public class InterceptorController {

	private String name;

	@RequestMapping(path = "/home")
	public String home(Model model, HttpSession session) {
		Object error = session.getAttribute("error");
		if (error != null) {
			model.addAttribute("error", error);
			session.removeAttribute("error");
		}
		model.addAttribute("name", "");
		System.out.println("You are on Interceptor Page");
		return "inter_form";
	}

	@RequestMapping(path = "/interForm")
	public String interForm(@RequestParam("name") String name, Model model) {

		this.name = name;
		model.addAttribute("name", name);

		System.out.println(name);
		System.out.println("You are on Interceptor Page");
		return "inter_form"; // servlet will take view name "about" and add a suffix ".jsp" and sends it
								// to the view resolver
	}
}
