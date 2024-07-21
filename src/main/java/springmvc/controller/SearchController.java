package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public RedirectView search(@ModelAttribute("searchBox") String searchQuery) {

		String url = "http://www.google.com/search?q=" + searchQuery;

		RedirectView view = new RedirectView();
		view.setUrl(url);
		return view;
	}

}