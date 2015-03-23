package beta.store.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/cart")
public class CartController {
	
	private final Logger log = Logger.getLogger(CartController.class);
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public @ResponseBody String addProductToSession(@RequestParam int productId, @RequestParam int count){
		log.debug("productId = " + productId + "count = " + count);
		return "true";
	}
}
