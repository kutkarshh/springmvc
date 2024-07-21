package springmvc.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class AuthController {

	@Autowired
	private UserService userService;

	List<ObjectError> allErrors;

	private boolean showError = false;
	private boolean userCreated = false;

	@RequestMapping("/user/{userId}")
	public String user(@PathVariable("userId") long id, Model model) {
		model.addAttribute("userId", id);
		User user = userService.getUserDetails(id);
		model.addAttribute("name", "Utkarsh Kumar");
		if (user == null) {
			return "redirect:/home";
		}
		System.out.println(user);
		model.addAttribute("user", user);
		return "user_profile";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String search(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("name", "Utkarsh Kumar");
		model.addAttribute("showError", showError);
		model.addAttribute("userCreated", userCreated);
//		String ss = null;
//		System.out.println(ss.length());
//		System.out.println(userCreated);
		return "signup";
	}

	@RequestMapping(path = "/signup", method = RequestMethod.POST)
	public String handleForm(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
		String confirmPassword = user.getConfirm_password();

		if (result.hasErrors() || !confirmPassword.equals(user.getPassword())) {
			allErrors = result.getAllErrors();
			// Add the errors to the model or session
			model.addAttribute("allErrors", allErrors);
			if (!confirmPassword.equals(user.getPassword())) {
				result.rejectValue("confirm_password", "error.user", "Passwords do not match");
			}

			model.addAttribute("showError", true);

			return "signup";
		} else {
			model.addAttribute("showError", false);

			try {
				long response = this.userService.createUser(user);
				if (response > 0) {
					userCreated = true;
					model.addAttribute("userCreated", userCreated);
					System.out.println(userCreated);
					return "redirect:/home";
				} else {
					model.addAttribute("error", "User creation failed");
					return "signup";
				}
			} catch (DataIntegrityViolationException e) {
				model.addAttribute("showError", true);
				model.addAttribute("globalError", "Email address already exists.");
				System.out.println(e.getMessage());
			} catch (Exception e) {
				model.addAttribute("showError", true);
				model.addAttribute("globalError", "Error saving user. Please try again later.");
				System.out.println(e.getMessage());
			}
			return "signup";
		}
	}

//	// for handling NullPointer and NumberFormatException
//	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR) // used to send the error status code like 500
//	@ExceptionHandler({ NullPointerException.class, NumberFormatException.class })
//	public String exceptionHandlerAllError() {
//		return "error_page";
//	}
//
//	// for Handling Exception of generic type means any type of exception
//	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR) // used to send the error status code like 500
//	@ExceptionHandler(value = { Exception.class })
//	public String exceptionHandlerGeneric() {
//		return "error_page";
//	}

}
