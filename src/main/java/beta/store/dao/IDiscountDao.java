package beta.store.dao;

import beta.store.model.Discount;

public interface IDiscountDao {
	public Discount getDiscountById(int id);
	public int addDiscount(Discount discount);

}
