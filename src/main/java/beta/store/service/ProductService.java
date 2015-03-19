package beta.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import beta.store.dao.IProductDao;
import beta.store.model.Menu;
import beta.store.model.Product;

@Service
@Transactional
public class ProductService implements IProductService {
	
	@Autowired
	private IProductDao productDao;

	@Override
	public void addProduct(Product product) {
		productDao.addProduct(product);
	}

	@Override
	public List<Product> getProductsByMenu(Menu menu) {
		return productDao.getProductsByMenu(menu);
	}

	@Override
	public Product getProductById(int productId) {
		return productDao.getProductById(productId);
	}

}
