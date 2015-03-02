package beta.store.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beta.store.model.Menu;
import beta.store.model.Product;
import beta.store.service.IMenuService;
import beta.store.service.IProductService;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	@Autowired
	private IMenuService menuService;
	
	@Autowired
	private IProductService producService;
	
	private final Logger log = Logger.getLogger(ProductController.class);

	@RequestMapping(value = "/{link}")
	public ModelAndView menuPage(@PathVariable("link") String link){
		log.debug("menu = " + link);
		Menu menu = menuService.getMenuByLink(link);
		if(menu != null){
			ModelAndView mv = new ModelAndView("product/list_product");
			mv.addObject("menus", menuService.getMenus());
			mv.addObject("listProduct", producService.getProductByMenu(menu));
			return mv;
		} else {
			log.debug("menu in db is null, redirect to 404");
		}
		return null;
	}
	
	@RequestMapping(value = "/makedata")
	public ModelAndView makeSampleData(){
		Menu menu = new Menu();
		menu.setName("men");
		menu.setLink("men");
		
		
		for(int i=0; i< 10; i++){
			Product p = new Product();
			p.setName("product name " + (i + 10));
			p.setManufacturer("MANUFACTURER" + (i + 10));
			p.setMenu(menuService.getMenuByLink("men"));
			producService.addProduct(p);
		}
		
		return new ModelAndView("sample");
	}
}
