package beta.store.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

	@RequestMapping(value = "/login")
	public ModelAndView loginPage() {
		ModelAndView mv = new ModelAndView("login/login");
		mv.addObject("user", new User());
		mv.addObject("menus", menuService.getAllMenus());
		return mv;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginPage(@ModelAttribute User user,
			HttpSession session, HttpServletRequest request,
			HttpServletResponse response, @RequestParam("from") String from)
			throws IOException {
		User dbUser = userService.getUser(user);
		if (dbUser != null) {
			session.setAttribute("currentUser", dbUser);
			response.sendRedirect("/sport-store/login-success?from=" + from);
		}
		
		ModelAndView mv = new ModelAndView("login/login");
		mv.addObject("message", "wrong email or password");
		mv.addObject("menus", menuService.getAllMenus());
		return mv;
	}

	@RequestMapping(value = "/login-success", method = RequestMethod.GET)
	public ModelAndView loginSuccess(@RequestParam("from") String from) {
		ModelAndView mv = new ModelAndView("login/login_success");
		mv.addObject("menus", menuService.getAllMenus());
		return mv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView registerForm(HttpServletResponse response, HttpSession session) {
		
		ModelAndView mv = new ModelAndView("login/register");
		mv.addObject("user", new User());
		mv.addObject("menus", menuService.getAllMenus());
		mv.addObject("currentUser", session.getAttribute("currentUser"));
		return mv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerSubmit(@ModelAttribute User user) {
		userService.addUser(user);
		return new ModelAndView("login/register_success", "menus",
				menuService.getAllMenus());
	}

	@RequestMapping(value = "/logout")
	public ModelAndView logoutPage(HttpSession session) {
		session.invalidate();
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("menus", menuService.getAllMenus());
		return mv;
	}
}
