package com.liuyijiang.batest.vo;

import java.io.Serializable;

/**
 * …Ã∆∑∂©µ•
 * @author liuyijiang
 *
 */
public class OrderVO implements Serializable{
   
	/**
	 * 
	 */
	private static final long serialVersionUID = -8258065555882106254L;
	private String name;
	private int quantity;
	private double money;
	private String type;
	
	public OrderVO(){
	}
	
	public OrderVO(String name, int quantity, double money, String type) {
		this.name = name;
		this.quantity = quantity;
		this.money = money;
		this.type = type;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}
	
}
