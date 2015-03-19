package beta.store.dao;

import java.util.List;

import beta.store.model.Menu;
import beta.store.model.Product;

public interface IProductDao {
	public void addProduct(Product product);
	public List<Product> getProductsByMenu(Menu menu);
	public Product getProductById(int productId);
}
