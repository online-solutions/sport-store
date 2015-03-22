package beta.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import beta.store.dao.IMenuDao;
import beta.store.model.Menu;

@Service
@Transactional
public class MenuService implements IMenuService {
	
	@Autowired
	private IMenuDao menuDao;

	@Override
	public List<Menu> getAllMenus() {
		return menuDao.getAllMenus();
	}

	@Override
	public void addMenu(Menu menu) {
		menuDao.addMenu(menu);
	}

	@Override
	public Menu getMenuByLink(String link) {
		return menuDao.getMenuByLink(link);
	}

}
