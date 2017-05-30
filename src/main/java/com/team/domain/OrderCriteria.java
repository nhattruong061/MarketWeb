package com.team.domain;

import org.hibernate.validator.constraints.NotBlank;

public class OrderCriteria {

    int idUser;
    String idProduct;
    int numberProduct;
    String address;
    String phone;
	public OrderCriteria(int idUser, String idProduct, int numberProduct, String address, String phone) {
		super();
		this.idUser = idUser;
		this.idProduct = idProduct;
		this.numberProduct = numberProduct;
		this.address = address;
		this.phone = phone;
	}
	public OrderCriteria() {
		super();
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public String getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(String idProduct) {
		this.idProduct = idProduct;
	}
	public int getNumberProduct() {
		return numberProduct;
	}
	public void setNumberProduct(int numberProduct) {
		this.numberProduct = numberProduct;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

}