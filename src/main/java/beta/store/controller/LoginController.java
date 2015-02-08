package beta.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login")
	public ModelAndView loginPage(){
		return new ModelAndView("login/login");
	}
	
	@RequestMapping(value="/register")
	public ModelAndView registerPage(){
		return new ModelAndView("login/register");
	}

}
