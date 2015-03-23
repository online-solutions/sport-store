package beta.store.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beta.store.model.Discount;

@Repository
public class DiscountDao implements IDiscountDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public Discount getDiscountById(int id) {
		return (Discount) getCurrentSession().get(Discount.class, new Integer(id));
	}
	
	@Override
	public int addDiscount(Discount discount) {
		return (int) getCurrentSession().save(discount);
	}

	

}
