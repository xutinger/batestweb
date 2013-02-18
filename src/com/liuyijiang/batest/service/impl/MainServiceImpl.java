package com.liuyijiang.batest.service.impl;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.stereotype.Service;

import com.liuyijiang.batest.service.IMainService;
import com.liuyijiang.batest.tools.FormateTool;
import com.liuyijiang.batest.tools.MainTools;
import com.liuyijiang.batest.vo.AccountVO;
import com.liuyijiang.batest.vo.OrderVO;
/**
 * ����service
 * @author liuyijiang
 *
 */
@Service
public class MainServiceImpl implements IMainService {

	@Override
	public AccountVO checkOrders(List<OrderVO> list,String location) {
		AccountVO accountVO = new AccountVO();
		BigDecimal taxp = new BigDecimal(MainTools.taxMap.get(location));//˰�����
		BigDecimal tax = new BigDecimal(0.00);//˰��
		BigDecimal all = new BigDecimal(0.00);//�ܽ�
		for(OrderVO vo : list){
			BigDecimal amoney = new BigDecimal(vo.getMoney()).multiply(new BigDecimal(vo.getQuantity()));//�ܽ��
			all = (all.add(amoney));//������н��
			if(MainTools.notaxMap.get(location+"_"+vo.getType()) == null){//����Ʒ������˰��Ʒ
				tax = tax.add(amoney.multiply(taxp));
			}
		}
		FormateTool fl = new FormateTool();
		accountVO.setTax(fl.formaterMoney(tax));
		accountVO.setSubtotal(all.setScale(2, BigDecimal.ROUND_HALF_UP));
		accountVO.setTotal(accountVO.getTax().add(accountVO.getSubtotal()));
		return accountVO;
	}

	@Override
	public List<OrderVO> getDemoList(int id) {
		List<OrderVO> list = null;
        if(id==1){
        	list = MainTools.getList1();
		}else if(id==2){
			list = MainTools.getList2();
		}else if(id==3){
			list = MainTools.getList3();
		}else{
			list = null;
		}
        return list;
	}
	
}
