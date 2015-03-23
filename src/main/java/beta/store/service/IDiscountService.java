package beta.store.service;

import beta.store.model.Discount;

public interface IDiscountService {
	public Discount getDiscountById(int id);
	public int addDiscount(Discount discount);
}
