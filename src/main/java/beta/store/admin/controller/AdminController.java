package beta.store.admin.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
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

	@RequestMapping(value = "/login")
	public ModelAndView loginPage() {
		ModelAndView view = new ModelAndView("admin/login");
		view.addObject("user", new User());
		return view;
	}

	@RequestMapping(value = "/submitLogin", method = RequestMethod.POST)
	public ModelAndView submitLoginPage(@RequestParam("email") String email,
			@RequestParam("password") String password) {
		// logs debug message
		if (logger.isDebugEnabled()) {
			logger.debug("getWelcome is executed!");
		}

		// logs exception
		logger.error("This is Error message", new Exception("Testing"));
		
		logger.debug("log in debug");
		logger.debug(email);
		

		return new ModelAndView("redirect:home");
	}

	@RequestMapping(value = "/home")
	public ModelAndView homePage() {
		return new ModelAndView("admin/home");
	}
}
