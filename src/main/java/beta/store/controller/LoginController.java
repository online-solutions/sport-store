package beta.store.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import beta.store.model.User;
import beta.store.service.IMenuService;
import beta.store.service.IUserService;

@Controller
public class LoginController {
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private IMenuService menuService;
	
	private static final Logger log = Logger.getLogger(LoginController.class);
	
	@RequestMapping(value="/login")
	public ModelAndView loginPage(){
		return new ModelAndView("login/login", "menus", menuService.getMenus());
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView registerForm(){
		ModelAndView mv = new ModelAndView("login/register");
		mv.addObject("user", new User());
		mv.addObject("menus", menuService.getMenus());
		return mv;
	}

	@RequestMapping(value="/register", method=RequestMethod.POST)
	public ModelAndView registerSubmit(@ModelAttribute User user){
		userService.addUser(user);
		return new ModelAndView("login/register_success", "menus", menuService.getMenus());
	}
}
