package beta.store.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import beta.store.model.Product;
import beta.store.service.IMenuService;
import beta.store.service.IProductService;

@Controller
@RequestMapping(value="/cart")
public class CartController {
	
	@Autowired
	private IProductService productService;
	
	@Autowired
	private IMenuService menuService;
	
	private static final String CART_SESSION = "cart_session";
	
	private final Logger log = Logger.getLogger(CartController.class);
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public @ResponseBody String addProductToSession(@RequestParam int productId, 
			@RequestParam int count, HttpSession session){
		Map<Product, Integer> sessionListProduct = new HashMap<Product, Integer>();
		
		// TODO: get listProduct from session here
		sessionListProduct.put(productService.getProductById(productId), count);
		session.setAttribute(CART_SESSION, sessionListProduct);
		log.debug("productId = " + productId + "count = " + count);
		return "true";
	}
	
	@RequestMapping(value={"list","/", ""}, method=RequestMethod.GET)
	public ModelAndView showAllProductInCart(HttpSession session){
		ModelAndView mv = new ModelAndView("product/cart");
		Map<Product, Integer> sessionListProduct = new HashMap<Product,Integer>();
		sessionListProduct = (HashMap<Product, Integer>) session.getAttribute(CART_SESSION);
		
		// use for debug only
		if(sessionListProduct != null){
			Iterator iterator = sessionListProduct.entrySet().iterator();
			while (iterator.hasNext()) {
				Map.Entry mapEntry = (Map.Entry) iterator.next();
				System.out.println("The key is: " + ((Product) mapEntry.getKey()).getName()
					+ ",value is :" + mapEntry.getValue());
			}
		}
		
		mv.addObject("menus", menuService.getAllMenus());
		mv.addObject("listProduct", sessionListProduct);
		
		return mv;
	}
}
