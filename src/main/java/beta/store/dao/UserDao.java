package beta.store.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import static org.hibernate.criterion.Restrictions.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beta.store.model.User;

@Repository
public class UserDao implements IUserDao {

	@Autowired
	private SessionFactory sessionFactory;

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void addUser(User user) {
		getCurrentSession().save(user);
	}

	@Override
	public User getUserByAttribute(User user) {
		return (User) getCurrentSession().createCriteria(User.class)
				.add(eq("email", user.getEmail()))
				.add(eq("password", user.getPassword())).uniqueResult();
	}

}
