package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.Feedback;
import springmvc.service.UserService;

@Controller
public class ContactController {

	// Attaching UserService for connecting and executing user related operations on
	// the database
	@Autowired
	private UserService userService;
	// Show successButton status
	boolean showButton = true;

	@RequestMapping("/contact")
	public String showForm(Model model) {
		model.addAttribute("name", "Utkarsh Kumar");
		return "contact";
	}

	// Form Handler when the contact form in contact.jsp is submitted this will map
	// it to submit Url and view page.

	@RequestMapping(path = "/processForm", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute Feedback feedback, Model model) {
		model.addAttribute("name", "Utkarsh Kumar");
		// creating user by calling service method createUser
		int response = this.userService.createFeedback(feedback);
		showButton = response > 0 ? true : false;
		model.addAttribute("status", showButton);
		model.addAttribute("_id", response);
		return "success";
	}

	/*
	 * Using Normal RequestParam Annotations
	 * 
	 * @RequestMapping(path = "/processForm", method = RequestMethod.POST) public
	 * String handleForm(
	 * 
	 * @RequestParam(name = "user_name", required = true) String name,
	 * 
	 * @RequestParam("user_email") String email,
	 * 
	 * @RequestParam("user_message") String message, Model model) {
	 * 
	 * model.addAttribute("name", name); model.addAttribute("email", email);
	 * model.addAttribute("message", message); return "success"; }
	 */
}