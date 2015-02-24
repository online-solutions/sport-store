package beta.store.admin.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import beta.store.model.User;

@RequestMapping("/admin")
@Controller
public class AdminController {

	private static final Logger logger = Logger
			.getLogger(AdminController.class);

	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public ModelAndView loginForm() {
		return new ModelAndView("admin/login", "user", new User());
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginSubmit(@ModelAttribute User user) {
		// logs debug message
		if (logger.isDebugEnabled()) {
			logger.debug("getWelcome is executed!");
		}

		// logs exception
//		logger.error("This is Error message", new Exception("Testing"));
		
		logger.debug("log in debug");
		logger.debug("your email is: " + user.getEmail());
		

		return new ModelAndView("redirect:home");
	}

	@RequestMapping(value = "/home")
	public ModelAndView homePage() {
		return new ModelAndView("admin/home");
	}
}
