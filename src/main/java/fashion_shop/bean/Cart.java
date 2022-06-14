package fashion_shop.bean;

public class Cart {
	private String idItem;
	private String nameItem;
	private float priceItem;
	private int Quantity;
	private String image;

	public String getIdItem() {
		return idItem;
	}

	public void setIdItem(String idItem) {
		this.idItem = idItem;
	}

	public String getNameItem() {
		return nameItem;
	}

	public void setNameItem(String nameItem) {
		this.nameItem = nameItem;
	}

	public float getPriceItem() {
		return priceItem;
	}

	public void setPriceItem(float priceItem) {
		this.priceItem = priceItem;
	}

	public int getQuantity() {
		return Quantity;
	}

	public void setQuantity(int Quantity) {
		this.Quantity = Quantity;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
}
