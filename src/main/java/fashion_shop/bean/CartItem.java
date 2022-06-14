package fashion_shop.bean;

public class CartItem {
	private Integer id;
	private String userPhone;	
	private String idProduct;
	private String name;	
	private String color;
	private String size;
	private Float price;	
	private Integer quantity;
	private String image;

	public CartItem() {
		super();
	}

	public CartItem(Integer id, String userPhone, String idProduct, String name, String color, String size, Float price,
			Integer quantity, String image) {
		super();
		this.id = id;
		this.userPhone = userPhone;
		this.idProduct = idProduct;
		this.name = name;
		this.color = color;
		this.size = size;
		this.price = price;
		this.quantity = quantity;
		this.image = image;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(String idProduct) {
		this.idProduct = idProduct;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}	


}