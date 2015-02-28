package beta.store.service;

import java.util.List;

import beta.store.model.Menu;

public interface IMenuService {
	public void addMenu(Menu menu);

	public List<Menu> getMenus();
}
