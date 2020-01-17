package com.skilldistillery.babysupplies.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Item {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String description;
	
	private String manufacturer;
	
	private String link;
	
	@Column(name="age_range")
	private String ageRange;
	
	@Column(name="purchase_year")
	private int purchaseYear;
	
	@Column(name="num_available")
	private int numAvailable;
	
	private Enum quality;
	
	private double price;
	
	public Item() {
		
	}
	public Item(String name, String description, String manufacturer, String link, String ageRange, int purchaseYear,
			int numAvailable, double price) {
		super();
		this.name = name;
		this.description = description;
		this.manufacturer = manufacturer;
		this.link = link;
		this.ageRange = ageRange;
		this.purchaseYear = purchaseYear;
		this.numAvailable = numAvailable;
		this.price = price;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getAgeRange() {
		return ageRange;
	}
	public void setAgeRange(String ageRange) {
		this.ageRange = ageRange;
	}
	public int getPurchaseYear() {
		return purchaseYear;
	}
	public void setPurchaseYear(int purchaseYear) {
		this.purchaseYear = purchaseYear;
	}
	public int getNumAvailable() {
		return numAvailable;
	}
	public void setNumAvailable(int numAvailable) {
		this.numAvailable = numAvailable;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "Item [id=" + id + ", name=" + name + ", description=" + description + ", manufacturer=" + manufacturer
				+ ", link=" + link + ", ageRange=" + ageRange + ", purchaseYear=" + purchaseYear + ", numAvailable="
				+ numAvailable + ", price=" + price + "]";
	}
	
	

}
