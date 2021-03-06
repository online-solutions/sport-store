package beta.store.dao;

import java.util.List;

import beta.store.model.Menu;

public interface IMenuDao {
	public void addMenu(Menu menu);
	public Menu getMenuByLink(String link);
	public List<Menu> getAllMenus();
}
