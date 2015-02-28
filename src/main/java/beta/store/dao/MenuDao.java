package beta.store.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beta.store.model.Menu;

@Repository
public class MenuDao implements IMenuDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addMenu(Menu menu) {
		getCurrentSession().save(menu);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Menu> getMenus() {
		return getCurrentSession().createQuery("from Menu").list();
	}

	
}
