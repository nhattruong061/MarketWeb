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
@Table(name = "order")
public class Order implements Serializable{
	
	 private static final long serialVersionUID = 1L;
	 @Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	 @Column(name = "id")
	 private int id;
	 
	 @Column(name = "idproduct")
	 private int idproduct;
	 
	 @Column(name = "numberproduct")
	 private int numberproduct;
	 
	 @Column(name = "iduser")
	 private int iduser;
	 
	 @Column(name = "address")
	 private String address;
	 
	 @Column(name = "phone")
	 private String phone;
	 
	 @Column(name = "state")
	 private String state;
	 
	 @Column(name = "created")
	 private String created;
	 
	 @Column(name = "modified")
	 private String modified;
	 
	 public Order() {
		 super();
	}

	public Order(int id, int idProduct, int numberProduct, int idUser, String address, String phone, String state,
			String created, String modified) {
		super();
		this.id = id;
		this.idproduct = idProduct;
		this.numberproduct = numberProduct;
		this.iduser = idUser;
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

	public int getIdProduct() {
		return idproduct;
	}

	public void setIdProduct(int idProduct) {
		this.idproduct = idProduct;
	}

	public int getNumberProduct() {
		return numberproduct;
	}

	public void setNumberProduct(int numberProduct) {
		this.numberproduct = numberProduct;
	}

	public int getIdUser() {
		return iduser;
	}

	public void setIdUser(int idUser) {
		this.iduser = idUser;
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

	public String getState() {
		return state;
	}

	public void setState(String state) {
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
