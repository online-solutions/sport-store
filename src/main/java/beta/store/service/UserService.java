package beta.store.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import beta.store.dao.IUserDao;
import beta.store.model.User;

@Service
@Transactional
public class UserService implements IUserService {
	
	@Autowired
	private IUserDao userDao;

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}

}
