package com.liuyijiang.batest.vo;

import java.math.BigDecimal;

/**
 * ½áËã½ð¶î
 * 
 * @author liuyijiang
 * 
 */
public class AccountVO {

	private BigDecimal subtotal;
	private BigDecimal tax;
	private BigDecimal total;
 
	public AccountVO(){
		subtotal = new BigDecimal(0.00);
		tax = new BigDecimal(0.00);
		total = new BigDecimal(0.00);
	}
	
	public BigDecimal getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(BigDecimal subtotal) {
		this.subtotal = subtotal;
	}

	public BigDecimal getTax() {
		return tax;
	}

	public void setTax(BigDecimal tax) {
		this.tax = tax;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

}
