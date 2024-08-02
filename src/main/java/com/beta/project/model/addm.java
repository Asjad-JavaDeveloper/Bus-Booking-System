package com.beta.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class addm {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	private int id;
	private String busname;
	private String busowner;
	private double price;
	private String date;
	private String state;
	private String city;
	
	@Column(name = "image_url")
	private String imageUrl;
	private String location;
	private String Desc;
	private String features;
	
	private String category;
	
	 private boolean booked;
	 private String bookedBy;



		public addm(String bookedBy) {
			super();
			this.bookedBy = bookedBy;
		}

		public String getBookedBy() {
			return bookedBy;
		}

		public void setBookedBy(String bookedBy) {
			this.bookedBy = bookedBy;
		}

		public addm(boolean booked) {
			super();
			this.booked = booked;
		}

		@Override
		public String toString() {
			return "addm [id=" + id + ", busname=" + busname + ", busowner=" + busowner + ", price=" + price + ", date="
					+ date + ", state=" + state + ", city=" + city + ", imageUrl=" + imageUrl + ", location=" + location
					+ ", Desc=" + Desc + ", features=" + features + ", category=" + category + ", booked=" + booked
					+ ", bookedBy=" + bookedBy + "]";
		}

		public addm(int id, String busname, String busowner, double price, String date, String state, String city,
				String imageUrl, String location, String desc, String features, String category, boolean booked,
				String bookedBy) {
			super();
			this.id = id;
			this.busname = busname;
			this.busowner = busowner;
			this.price = price;
			this.date = date;
			this.state = state;
			this.city = city;
			this.imageUrl = imageUrl;
			this.location = location;
			Desc = desc;
			this.features = features;
			this.category = category;
			this.booked = booked;
			this.bookedBy = bookedBy;
		}

		public addm() {
			super();
			// TODO Auto-generated constructor stub
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getBusname() {
			return busname;
		}

		public void setBusname(String busname) {
			this.busname = busname;
		}

		public String getBusowner() {
			return busowner;
		}

		public void setBusowner(String busowner) {
			this.busowner = busowner;
		}

		public double getPrice() {
			return price;
		}

		public void setPrice(double price) {
			this.price = price;
		}

		public String getDate() {
			return date;
		}

		public void setDate(String date) {
			this.date = date;
		}

		public String getState() {
			return state;
		}

		public void setState(String state) {
			this.state = state;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public String getImageUrl() {
			return imageUrl;
		}

		public void setImageUrl(String imageUrl) {
			this.imageUrl = imageUrl;
		}

		public String getLocation() {
			return location;
		}

		public void setLocation(String location) {
			this.location = location;
		}

		public String getDesc() {
			return Desc;
		}

		public void setDesc(String desc) {
			Desc = desc;
		}

		public String getFeatures() {
			return features;
		}

		public void setFeatures(String features) {
			this.features = features;
		}

		public String getCategory() {
			return category;
		}

		public void setCategory(String category) {
			this.category = category;
		}

		public boolean isBooked() {
			return booked;
		}

		public void setBooked(boolean booked) {
			this.booked = booked;
		}
	
	


	
	
	

}
