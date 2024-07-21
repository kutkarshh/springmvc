package springmvc.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(path = "/home", method = RequestMethod.GET)
	public ModelAndView home() {
		System.out.println("You are on Home Page");

		Map<String, String> skills = new HashMap<>();
		skills.put("HTML5", "Building semantic and accessible websites with the latest HTML5 standards.");
		skills.put("CSS3", "Creating visually stunning and responsive designs with CSS3.");
		skills.put("JavaScript", "Bringing interactivity and dynamic functionality to our projects with JavaScript.");
		skills.put("React", "Building fast, scalable, and maintainable applications with React.");
		skills.put("Node.js", "Building fast, scalable, and secure server-side applications with Node.js.");
		skills.put("Python", "Building data-driven applications and scripts with Python.");
		skills.put("Database Management", "Designing and implementing efficient database systems for our projects.");
		skills.put("AWS", "Deploying and managing scalable and secure cloud infrastructure with AWS.");

		ModelAndView model = new ModelAndView();
		model.addObject("name", "Utkarsh Kumar");
		model.addObject("skills", skills);
		model.setViewName("index");

		return model; // servlet will take view name "index" and add a suffix ".jsp" and sends it to
						// the view resolver
	}

	@RequestMapping(path = "/about")
	public String about(Model model) {
		model.addAttribute("name", "Utkarsh Kumar");
		System.out.println("You are on About Page");
		return "about"; // servlet will take view name "about" and add a suffix ".jsp" and sends it to
						// the view resolver
	}

	@RequestMapping(path = "/help")
	public ModelAndView help() {
		ModelAndView model = new ModelAndView();
		model.addObject("name", "Utkarsh Kumar");
		model.setViewName("help");

		System.out.println("You are on Help Page");
		return model; // servlet will take view name "help" and add a suffix ".jsp" and sends it to
						// the view resolver
	}
}
