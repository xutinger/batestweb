package com.liuyijiang.batest.tools;

import java.math.BigDecimal;

import com.liuyijiang.batest.vo.Formate;

/**
 * 四舍五入到最经的0.05 保留最多2位小数
 * @author liuyijiang
 *
 */
public class FormateTool {
   
	private void formate(int level,BigDecimal money,Formate formateMoney){
		if(level < 3 && level != 2){
			String str = money.toString();
			int number = Integer.parseInt(str.substring(str.indexOf(".")+level+1,str.indexOf(".")+level+2));
			if(number >= 5){
				formateMoney.setFormateData(money.setScale(level, BigDecimal.ROUND_HALF_UP));
			}else{
				formate(level+1,money,formateMoney);
			}
		}else if(level == 2){
			String str = money.toString();
			int number = Integer.parseInt(str.substring(str.indexOf(".")+level+1,str.indexOf(".")+level+2));
			if(number >= 5){
				str = str.substring(0,str.indexOf(".")+2)+"5";
				formateMoney.setFormateData(new BigDecimal(str));
			}else{
				formateMoney.setFormateData(money.setScale(level, BigDecimal.ROUND_HALF_UP));
			}
		}
	}
	
	public BigDecimal formaterMoney(BigDecimal money){
		Formate moneyf = new Formate();
		formate(0, money,moneyf);
		return moneyf.getFormateData();
	}
	
}
