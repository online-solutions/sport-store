package beta.store.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.OneToMany;

import static javax.persistence.GenerationType.*;

import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="discounts")
public class Discount {
	@Id
	@GeneratedValue(strategy=IDENTITY)
	private int id;
	private String name;
	private Date startDate;
	private Date endDate;
	private String description;
	private boolean saleOff;
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "discount")
	private List<Product> products;
	
	public Discount(){};
	
	public Discount(String name, Date startDate, Date endDate) {
		this.name = name;
		this.startDate = startDate;
		this.endDate = endDate;
	}
	
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
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public boolean isSaleOff() {
		return saleOff;
	}
	public void setSaleOff(boolean saleOff) {
		this.saleOff = saleOff;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}
	

}
