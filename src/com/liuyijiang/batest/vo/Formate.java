package com.liuyijiang.batest.vo;

import java.math.BigDecimal;

public class Formate {
  
	private BigDecimal formateData;

	public Formate(){
		formateData = new BigDecimal(0.0);
	}
	
	public BigDecimal getFormateData() {
		return formateData;
	}

	public void setFormateData(BigDecimal formateData) {
		this.formateData = formateData;
	}
	
	
	
}
