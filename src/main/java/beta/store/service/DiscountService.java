package beta.store.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import beta.store.dao.IDiscountDao;
import beta.store.model.Discount;

@Service
@Transactional
public class DiscountService implements IDiscountService {
	
	@Autowired
	private IDiscountDao discountDao;
	
	@Override
	public Discount getDiscountById(int id) {
		return discountDao.getDiscountById(id);
	}

	@Override
	public int addDiscount(Discount discount) {
		return discountDao.addDiscount(discount);
	}

	

}
