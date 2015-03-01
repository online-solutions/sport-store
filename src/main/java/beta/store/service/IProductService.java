package beta.store.service;

import java.util.List;

import beta.store.model.Menu;
import beta.store.model.Product;

public interface IProductService {
	public void addProduct(Product product);
	public List<Product> getProductByMenu(Menu menu);
}
