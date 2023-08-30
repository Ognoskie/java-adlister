import java.util.List;
import java.util.function.Supplier;

public class Coffee {
	private long id;
	private String name;
	private double price;
	private Roast roast;
	private Supplier supplier;
	private List<Shop> shops;

	public Coffee() {
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Roast getRoast() {
		return roast;
	}

	public void setRoast(Roast roast) {
		this.roast = roast;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public List<Shop> getShops() {
		return shops;
	}

	public void setShops(List<Shop> shops) {
		this.shops = shops;
	}
}

