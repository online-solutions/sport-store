package beta.store.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beta.store.model.Menu;
import beta.store.model.Product;

@Repository
public class ProductDao implements IProductDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProductsByMenu(Menu menu) {
		return getCurrentSession().createCriteria(Product.class).add(Restrictions.eq("menu", menu)).list();
	}

	@Override
	public void addProduct(Product product) {
		getCurrentSession().saveOrUpdate(product);;
	}

	@Override
	public Product getProductById(int productId) {
		return (Product) getCurrentSession().get(Product.class, productId);
	}

}
