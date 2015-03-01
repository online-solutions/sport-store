package beta.store.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name="menus", uniqueConstraints = {
		@UniqueConstraint(columnNames = "name"),
		@UniqueConstraint(columnNames = "link") })
public class Menu {
	@Id
	@GeneratedValue(strategy = IDENTITY)
	private int id;
	private String name;
	private String link;
	private int level;
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "menu")
	private List<Product> products = new ArrayList<Product>(0);
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	
	public List<Product> getProducts(){
		return this.products;
	}
	
	public void setProducts(List<Product> products){
		this.products = products;
	}

}
