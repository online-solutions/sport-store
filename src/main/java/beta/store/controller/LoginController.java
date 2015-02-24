package beta.store.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import beta.store.model.User;
import beta.store.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	private static final Logger log = Logger.getLogger(LoginController.class);
	
	@RequestMapping(value="/login")
	public ModelAndView loginPage(){
		return new ModelAndView("login/login");
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView registerForm(){
		return new ModelAndView("login/register", "user", new User());
	}

	@RequestMapping(value="/register", method=RequestMethod.POST)
	public ModelAndView registerSubmit(@ModelAttribute User user){
		userService.addUser(user);
		log.info(user.getEmail());
		
		return new ModelAndView("login/register", "user", user);
	}
}
