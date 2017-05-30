package com.team.domain;

public class SearchProduct {
	private String name;
	private String[] price;
	private String[] sale;
	private int filter;
	private String brands;
	public SearchProduct(){super();}
	public SearchProduct(String name){
		this.name=name;
	}
	public SearchProduct(String name, String[] price, String[] sale){
		this.name=name;
		this.price=price;
		this.sale=sale;
	}
	public SearchProduct(String[] price, String[] sale){
		this.price=price;
		this.sale=sale;
	}
	public SearchProduct(int filter, String brands){
		this.filter=filter;
		this.brands=brands;
	}
	public String getName(){
		return this.name;
	}
	public void setName(String name){
		this.name=name;
	}
	public String[] getPrice(){
		return price;
	}
	public void setPrice(String[] price)
	{
		this.price=price;
	}
	public String[] getSale(){
		return sale;
	}
	public void setSale(String[] sale)
	{
		this.sale=sale;
	}
	public int getFilter(){
		return this.filter;
	}
	public void setFilter(int filter){
		this.filter=filter;
	}
	public String getBrands(){
		return this.brands;
	}
	public void setBrands(String brands){
		this.brands=brands;
	}
}
