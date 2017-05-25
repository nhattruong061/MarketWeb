package com.team.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "orderUser")
public class Order implements Serializable{
	
	 private static final long serialVersionUID = 1L;
	 @Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	 @Column(name = "id")
	 private int id;
	 
	 @Column(name = "idProduct")
	 private String idProduct;
	 
	 @Column(name = "numberProduct")
	 private int numberProduct;
	 
	 @Column(name = "idUser")
	 private int idUser;
	 
	 @Column(name = "address")
	 private String address;
	 
	 @Column(name = "phone")
	 private String phone;
	 
	 @Column(name = "state")
	 private int state;
	 
	 @Column(name = "created")
	 private String created;
	 
	 @Column(name = "modified")
	 private String modified;
	 
	 public Order() {
		 super();
	}

	public Order(int id, String idProduct, int numberProduct, int idUser, String address, String phone, int state,
			String created, String modified) {
		super();
		this.id = id;
		this.idProduct = idProduct;
		this.numberProduct = numberProduct;
		this.idUser = idUser;
		this.address = address;
		this.phone = phone;
		this.state = state;
		this.created = created;
		this.modified = modified;
	}
	
	public Order( String idProduct, int numberProduct, int idUser, String address, String phone, int state,
			String created, String modified) {
		super();
		this.idProduct = idProduct;
		this.numberProduct = numberProduct;
		this.idUser = idUser;
		this.address = address;
		this.phone = phone;
		this.state = state;
		this.created = created;
		this.modified = modified;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
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

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getCreated() {
		return created;
	}

	public void setCreated(String created) {
		this.created = created;
	}

	public String getModified() {
		return modified;
	}

	public void setModified(String modified) {
		this.modified = modified;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
