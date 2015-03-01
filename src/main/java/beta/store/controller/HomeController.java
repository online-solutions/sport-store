package beta.store.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beta.store.service.IMenuService;

@Controller
public class HomeController {
	
	@Autowired
	private IMenuService menuService;
	
	private final Logger log = Logger.getLogger(HomeController.class);
	
	@RequestMapping(value={"/", "/index"})
	public ModelAndView mainPage() {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="/home")
	public ModelAndView homePage() {
		ModelAndView mv = new ModelAndView("home");
//		Menu menu = new Menu();
//		menu.setLink("def");
//		menuService.addMenu(menu);
		mv.addObject("menus", menuService.getMenus());
		return mv;
	}
	
}
