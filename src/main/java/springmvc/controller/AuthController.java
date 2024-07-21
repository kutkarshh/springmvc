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
	private boolean showPassword = false;
	private boolean userCreated = false;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String search(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("name", "Utkarsh Kumar");
		model.addAttribute("showError", showError);
		model.addAttribute("showPassword", showPassword);
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

}
