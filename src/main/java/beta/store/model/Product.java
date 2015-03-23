package beta.store.model;

import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="products")
public class Product {
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String description;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "menu_id", nullable = false)
	private Menu menu;
	private String kind;
	// price in USD
	private Double price;
	@Column( name="second_price")
	private Double secondPrice;
	private String color;
	@ElementCollection
	@CollectionTable(name = "product_images",joinColumns=@JoinColumn(name="product_id"))
	private List<String> images;
	
	private float review;
	@Column( name="total_review")
	private int totalReview;
	private String manufacturer;
	private int count;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "discount_id", nullable = true)
	private Discount discount;
	
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	public Menu getMenu() {
		return menu;
	}
	public void setMenu(Menu menu) {
		this.menu = menu;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getSecondPrice() {
		return secondPrice;
	}
	public void setSecondPrice(Double secondPrice) {
		this.secondPrice = secondPrice;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public List<String> getImages() {
		return images;
	}
	public void setImages(List<String> images) {
		this.images = images;
	}
	public float getReview() {
		return review;
	}
	public void setReview(float review) {
		this.review = review;
	}
	public int getTotalReview() {
		return totalReview;
	}
	public void setTotalReview(int totalReview) {
		this.totalReview = totalReview;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Discount getDiscount() {
		return discount;
	}
	public void setDiscount(Discount discount) {
		this.discount = discount;
	}
	
}
