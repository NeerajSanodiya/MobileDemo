package dto;

import java.io.File;

public class MobileDTO {
	
	private String Description;
	private String Company_Name;
	private String Model_Number;
	private String Os;
	private String Price;
	private String Quantity;
	private String Image_path;
	
	
	public String getImage_path() {
		return Image_path;
	}
	public void setImage_path(String image_path) {
		Image_path = image_path;
	}
	public String getCompany_Name() {
		return Company_Name;
	}
	public void setCompany_Name(String company_Name) {
		Company_Name = company_Name;
	}
	public String getModel_Number() {
		return Model_Number;
	}
	public void setModel_Number(String model_Number) {
		Model_Number = model_Number;
	}
	public String getOs() {
		return Os;
	}
	public void setOs(String os) {
		Os = os;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	public String getQuantity() {
		return Quantity;
	}
	public void setQuantity(String quantity) {
		Quantity = quantity;
	}

	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
}
