package beta.store.dao;

import beta.store.model.User;

public interface IUserDao {
	
	public void addUser(User user);
	
	public User getUserByAttribute(User user);

}
