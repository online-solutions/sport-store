package beta.store.controller;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beta.store.model.Discount;
import beta.store.model.Menu;
import beta.store.model.Product;
import beta.store.service.IDiscountService;
import beta.store.service.IMenuService;
import beta.store.service.IProductService;
import beta.store.utils.Utils;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	@Autowired
	private IMenuService menuService;
	
	@Autowired
	private IProductService productService;
	
	@Autowired
	private IDiscountService discountService;
	
	private final Logger log = Logger.getLogger(ProductController.class);

	@RequestMapping(value = "/{link}")
	public ModelAndView menuPage(@PathVariable("link") String link){
		log.debug("menu = " + link);
		Menu menu = menuService.getMenuByLink(link);
		if(menu != null){
			ModelAndView mv = new ModelAndView("product/list_product");
			mv.addObject("menus", menuService.getAllMenus());
			mv.addObject("listProduct", productService.getProductsByMenu(menu));
			return mv;
		} else {
			log.debug("menu in db is null, redirect to 404");
		}
		return null;
	}
	
	@RequestMapping(value = "/{link}/{productId}")
	public ModelAndView productDetailPage(@PathVariable("link") String link, 
			@PathVariable("productId") int productId){
		ModelAndView mv = new ModelAndView("product/product_detail");
		mv.addObject("menus", menuService.getAllMenus());
		mv.addObject("product", productService.getProductById(productId));
		return mv;
	}
	
	// create sample data of Discount and Product with Discount
	@RequestMapping(value = "/createDiscount")
	public ModelAndView createDiscount(){
		
//		for(int i = 0; i < 10; i++){
//			Date startDate = Utils.getDate(i, i, 2000+i);
//			Date endDate = Utils.getDate(i, i, 2010+i);
//			Discount discount = new Discount("discount"+i,startDate, endDate);
////			List<Product> products = productService.getProductsByMenu(menuService.getMenuByLink("men"));
////			discount.setProducts(products);
//			int discountId = discountService.addDiscount(discount);
//			log.debug(discountId);
////			Discount discountResult = discountService.getDiscountById(discountId);
////			log.debug(discountResult.getName());
//		}
		
		Product myProduct = productService.getProductById(3);
		myProduct.setDiscount(discountService.getDiscountById(2));
		productService.addProduct(myProduct);
		
		return new ModelAndView("sample");
	}
	
	
	@RequestMapping(value = "/makedata")
	public ModelAndView makeSampleData(){
//		Menu menu = new Menu();
//		menu.setName("men");
//		menu.setLink("men");
//		
//		
//		for(int i=0; i< 10; i++){
//			Product p = new Product();
//			p.setName("product name " + (i + 10));
//			p.setManufacturer("MANUFACTURER" + (i + 10));
//			p.setMenu(menuService.getMenuByLink("men"));
//			productService.addProduct(p);
//		}
		
		return new ModelAndView("sample");
	}
}
